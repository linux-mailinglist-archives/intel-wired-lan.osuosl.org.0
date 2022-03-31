Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7BE4EDE5F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 18:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E95261345;
	Thu, 31 Mar 2022 16:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efLN6YnkHYaT; Thu, 31 Mar 2022 16:07:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D0EB61343;
	Thu, 31 Mar 2022 16:07:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DF681BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7737E424B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new); dkim=neutral
 reason="invalid (public key: invalid data)" header.d=pensando.io
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U8li7Xc82f6p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 16:07:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67B9E424B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 16:07:01 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 g9-20020a17090ace8900b001c7cce3c0aeso2793036pju.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 09:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=Uf9yJTasVsQ6/BJUWLSHWtcYzEmfN8fjMV1GPm1O1YI=;
 b=vp4kt7forv46wPnSsRuMpccqmaZKfnONMLE9WsF76RiFAVllMDA9IHTF8+sx9nEiTS
 YHlvQXA2N3ZkwL0bFD0lOsQ7JxctMqmz3YSlagVg4lYu3DwAafK9hUMuwxgx+cClq2N8
 IwRy7CB9w6k3r0jP3Y2cqnfocv0461DLuZIJLOCwAFA6Qe9vYDgDIxBhIgsuYH9u4fJy
 mPJ/DLPf2YJ8tdq9p1rLU0i0Oz/pfMWZeVaRBFBrsuMzTKGM41ImP63TDnnWXeyb3XpH
 61yxrUn9jwA4WTGV508u/ZFmcbn1hcjvcOjipVBc/4+aeJB5aksiiqSt4f5cyWupFcKA
 hxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Uf9yJTasVsQ6/BJUWLSHWtcYzEmfN8fjMV1GPm1O1YI=;
 b=LIiHoXfeBCFZ6ZwEy9S+dTs33Gh+WmgPGEQFVzCZdovyEG2uQNv/Mzstzj05R74dfq
 WpCUIRb2L5noqf7QDMzyTvyz0EOyYYM0lGzGQG+6aZvHwiBYjY+QVPwtYf/O74IZaaH8
 I/UOOvafeyopPqdX3U59wHBU2a6i2XY95dzLLFRQPY7mloXC84gWdtTcAU0i5IRb++Px
 PHRKk8s9Z/9ySCZzB1p5XmfHP2FDzA436SRogARrsGO0scs3G4hCLbNIG3CxFAWg730y
 uNDZCZ4FQvRKacJg0hKdB+ZkBoh3e1VFCo0VQ9rL50ED9Aml5nKkm4S7jJ5w1pdWNAd7
 wEEg==
X-Gm-Message-State: AOAM530M6mS8QjsBOaIgcMYG2Od97/00Q1YJ21xkZOz9YdbbB45xoS9c
 53cQDKam/7F1W+MSTn00mcWdpQ==
X-Google-Smtp-Source: ABdhPJyY+0CTZYarDCjoDYjk8NiOT71Jxzu846aTfVDVFw5VXfLU5WUK+ipxuUllfAH4fdJUkfrhLw==
X-Received: by 2002:a17:90b:4c4e:b0:1c7:4c0f:7c77 with SMTP id
 np14-20020a17090b4c4e00b001c74c0f7c77mr6979546pjb.222.1648742820796; 
 Thu, 31 Mar 2022 09:07:00 -0700 (PDT)
Received: from [192.168.0.2] ([50.53.169.105])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a056a00170200b004fae65cf154sm28537187pfc.219.2022.03.31.09.06.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Mar 2022 09:07:00 -0700 (PDT)
Message-ID: <466451a5-d9d4-d9fc-29d3-0a1946872f2e@pensando.io>
Date: Thu, 31 Mar 2022 09:06:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Content-Language: en-US
To: Leon Romanovsky <leon@kernel.org>, "David S . Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
From: Shannon Nelson <snelson@pensando.io>
In-Reply-To: <737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com>
Subject: Re: [Intel-wired-lan] [PATCH net v1] ixgbe: ensure IPsec VF<->PF
 compatibility
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
Cc: Steffen Klassert <steffen.klassert@secunet.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Raed Salem <raeds@nvidia.com>,
 Shannon Nelson <shannon.nelson@oracle.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>
Content-Type: multipart/mixed; boundary="===============3796693797503051672=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============3796693797503051672==
Content-Language: en-US
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    On 3/31/22 1:20 AM, Leon Romanovsky wrote:<br>
    <blockquote type="cite"
cite="mid:737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com">
      <pre class="moz-quote-pre" wrap="">From: Leon Romanovsky <a class="moz-txt-link-rfc2396E" href="mailto:leonro@nvidia.com">&lt;leonro@nvidia.com&gt;</a>

The VF driver can forward any IPsec flags and such makes the function
is not extendable and prone to backward/forward incompatibility.

If new software runs on VF, it won't know that PF configured something
completely different as it "knows" only XFRM_OFFLOAD_INBOUND flag.

Fixes: eda0333ac293 ("ixgbe: add VF IPsec management")
Reviewed-by: Raed Salem <a class="moz-txt-link-rfc2396E" href="mailto:raeds@nvidia.com">&lt;raeds@nvidia.com&gt;</a>
Signed-off-by: Leon Romanovsky <a class="moz-txt-link-rfc2396E" href="mailto:leonro@nvidia.com">&lt;leonro@nvidia.com&gt;</a>a</pre>
    </blockquote>
    <br>
    Thanks!<br>
    <br>
    Reviewed-by: Shannon Nelson <a class="moz-txt-link-rfc2396E" href="mailto:snelson@pensando.io">&lt;snelson@pensando.io&gt;</a><br>
    <br>
    <blockquote type="cite"
cite="mid:737616899df2a482e4ec35aa4056c9ac608d2f50.1648714609.git.leonro@nvidia.com">
      <pre class="moz-quote-pre" wrap="">
---
Chaagelog:
v1:
 * Replaced bits arithmetic with more simple expression
v0: <a class="moz-txt-link-freetext" href="https://lore.kernel.org/all/3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com">https://lore.kernel.org/all/3702fad8a016170947da5f3c521a9251cf0f4a22.1648637865.git.leonro@nvidia.com</a>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index e596e1a9fc75..69d11ff7677d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -903,7 +903,8 @@ int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
 	/* Tx IPsec offload doesn't seem to work on this
 	 * device, so block these requests for now.
 	 */
-	if (!(sam-&gt;flags &amp; XFRM_OFFLOAD_INBOUND)) {
+	sam-&gt;flags = sam-&gt;flags &amp; ~XFRM_OFFLOAD_IPV6;
+	if (sam-&gt;flags != XFRM_OFFLOAD_INBOUND) {
 		err = -EOPNOTSUPP;
 		goto err_out;
 	}
</pre>
    </blockquote>
    <br>
  </body>
</html>

--===============3796693797503051672==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============3796693797503051672==--
