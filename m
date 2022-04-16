Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6825057DB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Apr 2022 15:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3011540B8D;
	Mon, 18 Apr 2022 13:55:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGmae3ik4hEd; Mon, 18 Apr 2022 13:55:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BDBB4036F;
	Mon, 18 Apr 2022 13:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 149F01BF589
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:15:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0FB5E60B57
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJDhpiurJkcK for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Apr 2022 13:15:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4FF4660B2F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 13:15:02 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso9205423wma.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Apr 2022 06:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to;
 bh=kOyd0GNxS/QnsaWDtp+QNCo0H7Stp44Zgx0lcbZpDbI=;
 b=D2hmr4spYhmLXXYgKyPcZY2mWJVavMuxWwvqSLW9QBDdkxpa6y0lTgru3HFFNrF6G3
 tnBu/1CDekdv7ECOTbTntlHgZwmvUyPQyLfdp5txwdXmFQTlWjuMq/8QSTm3oAn77ZRG
 xWbq6q7w3NAoTvfRbo+PKf71gITgxdkDjz79Ou04PCzj2Sfkl0bdBshlho5PvG+NrUUH
 YdHu5C0uFpd2gvcMagV2NeQUZe5KT7K2ysUOwGweVgR4JX8G1RB2ja7T1N7NT4+L0eXm
 nbk3Hj8YTSmQ0DY0vtF/B8/rvoPUbgBMe7jGMbziet9VjscjtQpDZ1gAXmqNR7QPMZe4
 lvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to;
 bh=kOyd0GNxS/QnsaWDtp+QNCo0H7Stp44Zgx0lcbZpDbI=;
 b=oNZXEILuHfEuJJeIZfa95q313jNeuxGY9SqB3Rrf0sh4LjFYcl+nzgdtr1DHWFSvy8
 zjSEFbT0fZ74R5eDPJWk01E1vQgPqzemXf60XNXIX7o4NdBpiG+EuwfZlQjYj4HCvDEl
 SSCqRpnvPWgEmhyWzakqgwrsOlH+ktjBG3GD1hh3hQuJSZuoBXy9K5fFjC27LxOtLEjy
 tFsLoIvVGXjP7aKuh19NlM/TWY9FKEiJw5nBUZlNmD6mALayq+63PXooXetFw9kZEMSK
 CfGrIHo3POGiDonV5cIVFCps1MqX8maayaMhMjW7LqhdkjlHEu06hXOkY8u73t744YxP
 qsYw==
X-Gm-Message-State: AOAM532Ozh5L4w/8qOw8nG9y7C2XwbKkpCpZRouHK1fAq/EK1XOH6a/a
 IsvGYlD2cIokmlqmWFiFejE=
X-Google-Smtp-Source: ABdhPJwCIpUA/Wet0/K0ucLhjgR1joyB2Ei+PjSM+4Ef+GAGmQcZBksudcxU//zbGdiPnsNfet+JBQ==
X-Received: by 2002:a7b:c341:0:b0:37b:c619:c9f4 with SMTP id
 l1-20020a7bc341000000b0037bc619c9f4mr7340248wmj.38.1650114900365; 
 Sat, 16 Apr 2022 06:15:00 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.90.163])
 by smtp.gmail.com with ESMTPSA id
 ay41-20020a05600c1e2900b0038e75fda4edsm7081361wmb.47.2022.04.16.06.14.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 Apr 2022 06:14:59 -0700 (PDT)
Message-ID: <df4c0f81-454d-ab96-1d74-1c4fbc3dbd63@gmail.com>
Date: Sat, 16 Apr 2022 15:14:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <20220416111457.5868-1-eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204161331080.3501@hadrien>
X-Mailman-Approved-At: Mon, 18 Apr 2022 13:54:51 +0000
Subject: Re: [Intel-wired-lan] [PATCH v3] intel: igb: igb_ethtool.c: Convert
 kmap() to kmap_local_page()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: outreachy@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, ira.weiny@intel.com, davem@davemloft.net
Content-Type: multipart/mixed; boundary="===============0767069849787009984=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============0767069849787009984==
Content-Type: multipart/alternative;
 boundary="------------JjHHUUxfZ9vrKOIQxsTAMbVX"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------JjHHUUxfZ9vrKOIQxsTAMbVX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On ١٦‏/٤‏/٢٠٢٢ ١٣:٣١, Julia Lawall wrote:
>
> On Sat, 16 Apr 2022, Alaa Mohamed wrote:
>
>> Convert kmap() to kmap_local_page()
>>
>> With kmap_local_page(), the mapping is per thread, CPU local and not
>> globally visible.
> It's not clearer.
I mean this " fix kunmap_local path value to take address of the mapped 
page" be more clearer
> This is a general statement about the function.  You
> need to explain why it is appropriate to use it here.  Unless it is the
> case that all calls to kmap should be converted to call kmap_local_page.

It's required to convert all calls kmap to kmap_local_page. So, I don't 
what should the commit message be?

Is this will be good :

"kmap_local_page() was recently developed as a replacement for kmap().  The
kmap_local_page() creates a mapping which is restricted to local use by a
single thread of execution. "

>
> julia
>
>> Signed-off-by: Alaa Mohamed<eng.alaamohamedsoliman.am@gmail.com>
>> ---
>> changes in V2:
>> 	fix kunmap_local path value to take address of the mapped page.
>> ---
>> changes in V3:
>> 	edit commit message to be clearer
>> ---
>>   drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> index 2a5782063f4c..c14fc871dd41 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
>> @@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,
>>
>>   	frame_size >>= 1;
>>
>> -	data = kmap(rx_buffer->page);
>> +	data = kmap_local_page(rx_buffer->page);
>>
>>   	if (data[3] != 0xFF ||
>>   	    data[frame_size + 10] != 0xBE ||
>>   	    data[frame_size + 12] != 0xAF)
>>   		match = false;
>>
>> -	kunmap(rx_buffer->page);
>> +	kunmap_local(data);
>>
>>   	return match;
>>   }
>> --
>> 2.35.2
>>
>>
>>
--------------JjHHUUxfZ9vrKOIQxsTAMbVX
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On ١٦‏/٤‏/٢٠٢٢ ١٣:٣١, Julia Lawall
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.22.394.2204161331080.3501@hadrien">
      <pre class="moz-quote-pre" wrap="">

On Sat, 16 Apr 2022, Alaa Mohamed wrote:

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Convert kmap() to kmap_local_page()

With kmap_local_page(), the mapping is per thread, CPU local and not
globally visible.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
It's not clearer.  </pre>
    </blockquote>
    I mean this " fix kunmap_local path value to take address of the
    mapped page" be more clearer<br>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.22.394.2204161331080.3501@hadrien">
      <pre class="moz-quote-pre" wrap="">This is a general statement about the function.  You
need to explain why it is appropriate to use it here.  Unless it is the
case that all calls to kmap should be converted to call kmap_local_page.</pre>
    </blockquote>
    <p>It's required to convert all calls kmap to kmap_local_page. So, I
      don't what should the commit message be?</p>
    <p>Is this will be good :</p>
    <p>"<span style="color: rgb(51, 51, 51); font-family: -apple-system,
        BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto,
        &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;,
        &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color
        Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI
        Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">kmap_local_page()
        was recently developed as a replacement for kmap().  The</span><br
        style="box-sizing: border-box; color: rgb(51, 51, 51);
        font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe
        UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto
        Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple
        Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI
        Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(51, 51, 51); font-family: -apple-system,
        BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto,
        &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;,
        &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color
        Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI
        Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">kmap_local_page()
        creates a mapping which is restricted to local use by a</span><br
        style="box-sizing: border-box; color: rgb(51, 51, 51);
        font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe
        UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, &quot;Noto
        Sans&quot;, &quot;Liberation Sans&quot;, sans-serif, &quot;Apple
        Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI
        Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial;">
      <span style="color: rgb(51, 51, 51); font-family: -apple-system,
        BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto,
        &quot;Helvetica Neue&quot;, Arial, &quot;Noto Sans&quot;,
        &quot;Liberation Sans&quot;, sans-serif, &quot;Apple Color
        Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI
        Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;
        font-style: normal; font-variant-ligatures: normal;
        font-variant-caps: normal; font-weight: 400; letter-spacing:
        normal; orphans: 2; text-align: left; text-indent: 0px;
        text-transform: none; white-space: normal; widows: 2;
        word-spacing: 0px; -webkit-text-stroke-width: 0px;
        background-color: rgb(255, 255, 255); text-decoration-thickness:
        initial; text-decoration-style: initial; text-decoration-color:
        initial; display: inline !important; float: none;">single thread
        of execution. "<br>
      </span></p>
    <blockquote type="cite"
      cite="mid:alpine.DEB.2.22.394.2204161331080.3501@hadrien">
      <pre class="moz-quote-pre" wrap="">

julia

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">
Signed-off-by: Alaa Mohamed <a class="moz-txt-link-rfc2396E" href="mailto:eng.alaamohamedsoliman.am@gmail.com">&lt;eng.alaamohamedsoliman.am@gmail.com&gt;</a>
---
changes in V2:
	fix kunmap_local path value to take address of the mapped page.
---
changes in V3:
	edit commit message to be clearer
---
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 2a5782063f4c..c14fc871dd41 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -1798,14 +1798,14 @@ static int igb_check_lbtest_frame(struct igb_rx_buffer *rx_buffer,

 	frame_size &gt;&gt;= 1;

-	data = kmap(rx_buffer-&gt;page);
+	data = kmap_local_page(rx_buffer-&gt;page);

 	if (data[3] != 0xFF ||
 	    data[frame_size + 10] != 0xBE ||
 	    data[frame_size + 12] != 0xAF)
 		match = false;

-	kunmap(rx_buffer-&gt;page);
+	kunmap_local(data);

 	return match;
 }
--
2.35.2



</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------JjHHUUxfZ9vrKOIQxsTAMbVX--

--===============0767069849787009984==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0767069849787009984==--
