# $document.on 'click', '.video-wrap', ()->

#     target_iframe = $(this).find('iframe')
#     target_cover = $(this).find('.video-cover')

#     videoURL = target_iframe.attr('src')
#     dataplay = target_iframe.attr('data-play')
#     console.log(dataplay)

#     if dataplay
#         alert('1')
#         target_iframe.attr('src',videoURL+'?autoplay=1')
#         target_iframe.attr('data-play',1)
#         target_cover.addClass('hidden')
#     else
#         alert('2')
#         videoURL = target_iframe.attr('src')
#         videoURL = videoURL.replace("?autoplay=1", "")
#         target_iframe.prop('src','')
#         target_iframe.prop('src',videoURL)
#         target_iframe.attr('data-play',0)
#         target_cover.removeClass('hidden')

$document.on 'click', '.video-wrap', ()->

    target_holder = $(this).find('.video')
    target_iframe = $(this).find('iframe')
    target_cover = $(this).find('.video-cover')
    

    videoURL = target_iframe.attr('src')

    target_iframe.attr('src',videoURL+'?autoplay=1')
    target_cover.addClass('hidden')
    target_holder.addClass('playing')