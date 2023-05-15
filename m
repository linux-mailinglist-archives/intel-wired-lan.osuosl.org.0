Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A10C7031A8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 May 2023 17:36:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C955141D63;
	Mon, 15 May 2023 15:36:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C955141D63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684164988;
	bh=hRatMqwkro8tJTEHOr60gS0yYkmz9EAT7hk+A8jhjco=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gNmBqLmPyLmEKyGWz1yYiZ45rcavJGl1D22EZFGwg0R5g/hEyVWx1EP6xEQNf+47i
	 rL+bPo3EtVxx04nf4O1wKanP3NWD43PwkSiutIeVVVJ4+d8YH7PIHRcxtzWaYN57Nl
	 dkAOsRWBxhA1n/I71Pd4cu9dy/pGdWqvVnMgB+c62nGFy47Qw0z90FHFMUrcmVYN1W
	 V+2mNv78i5qHzdFQSVrKy6XtwF4zGsS6wifqIgfsttxLWTBzg2O+vlbykmlelYm6XE
	 wI+0wP4YkvoIehG+FvltHH5hTWUOgf//v95kdAC7kDoI9iI4HBxoRnaxkvfXC4IOJI
	 4zwbrBrZTIE0w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1RlewJpJkMcW; Mon, 15 May 2023 15:36:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F060403D6;
	Mon, 15 May 2023 15:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F060403D6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 62D051BF573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 471FF6159D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:36:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 471FF6159D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XhN4hnS4XD_r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 May 2023 15:36:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02C896159B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02C896159B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 15:36:20 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-246-LX7HTc9iMzWkUnnnvf1nGw-1; Mon, 15 May 2023 11:36:16 -0400
X-MC-Unique: LX7HTc9iMzWkUnnnvf1nGw-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-966329c872bso1176017366b.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 May 2023 08:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684164975; x=1686756975;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=x7CbMDqqB7Ef24aQqJke8PthcM5mzwIBmyE952+ZY6Q=;
 b=KJZs7sC8ycGfmS4mQJ/y5ahYApDcVLlbwyw3fPMPDNw64Cmyff+ARYQEoYg8swxZdD
 nCyXL+buQW8IJd1lGI4gpI9X42d5dBaQWOx+EbyMa40VqW+LlNlReLQ1Qdp44qUDbu+u
 hUlBw8IM/uwuxGhKBksfvUcwaPGV+NJoUVRMaMcZQJimJlS1mLh7rZ8gJ8vUjwhth55v
 MRr1Xt4+YWp//gzo+RVW9B/Vdhfh5c0ixYHrKKKHXb0EXME9zZKChiN/bB1bemf+rDb8
 DIfRz0DhkFzV8NAYKb2K4RyXs4riavSkyG66bSwVvs+YS10hSYGU2jZDMfWunzlmgbG9
 zJnw==
X-Gm-Message-State: AC+VfDxB8yojZYtpFwP3pANdoMP0UebvHSlPYESokOXvHsK9ekP+0xp6
 WlriMyJcmmMq+lhHeBvqu+0HUO7X1laFTsEiwH9yAw1m7vvnMBXrmSoAEqRosqmtq1NpIRTfcm/
 MS+QzW1RjgjKjaQQwHS4FmafXq1RAqQ==
X-Received: by 2002:a17:907:804:b0:94f:adb2:171f with SMTP id
 wv4-20020a170907080400b0094fadb2171fmr27955065ejb.28.1684164975530; 
 Mon, 15 May 2023 08:36:15 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ46GxPVBqoq2psgT5XG+XapuVBE6/4vYM0++VGwPutqBc+4LJ5jMPnxCh49EGXYSOjGcFb1gg==
X-Received: by 2002:a17:907:804:b0:94f:adb2:171f with SMTP id
 wv4-20020a170907080400b0094fadb2171fmr27955042ejb.28.1684164975130; 
 Mon, 15 May 2023 08:36:15 -0700 (PDT)
Received: from [192.168.41.200] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 k18-20020a17090632d200b009661f07db93sm9660631ejk.223.2023.05.15.08.36.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 May 2023 08:36:14 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <b0694577-e2b3-f6de-cf85-aed99fdf2496@redhat.com>
Date: Mon, 15 May 2023 17:36:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: Larysa Zaremba <larysa.zaremba@intel.com>, bpf@vger.kernel.org
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
 <20230512152607.992209-10-larysa.zaremba@intel.com>
In-Reply-To: <20230512152607.992209-10-larysa.zaremba@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1684164979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x7CbMDqqB7Ef24aQqJke8PthcM5mzwIBmyE952+ZY6Q=;
 b=GSwGpctiY2kG1qAk7HwOJ71e3tOEXgo8cJ7TewAz5SEcR6XDN2M5Al6rYk5aVIV+abS6es
 1dqqgTX7gBbnXY51sTUbIlP/kRfTUcesJ35Ck5dMZeJikamvRFPr10dM/49xL1Zn0r+esF
 MbZl7eLyU1Yenyc1IyVopuyIXPkM7KM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=GSwGpcti
Subject: Re: [Intel-wired-lan] [PATCH RESEND bpf-next 09/15] xdp: Add VLAN
 tag hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jiri Olsa <jolsa@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/05/2023 17.26, Larysa Zaremba wrote:
> Implement functionality that enables drivers to expose VLAN tag
> to XDP code.
> 
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
[...]

> diff --git a/net/core/xdp.c b/net/core/xdp.c
> index 41e5ca8643ec..eff21501609f 100644
> --- a/net/core/xdp.c
> +++ b/net/core/xdp.c
> @@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
>   	return -EOPNOTSUPP;
>   }
>   

Remember below becomes part of main documentation on HW metadata hints:
  - https://kernel.org/doc/html/latest/networking/xdp-rx-metadata.html

Hint compiling locally I use:
  make SPHINXDIRS="networking" htmldocs

> +/**
> + * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.

Is bpf_xdp_metadata_rx_ctag a good function name for the inner vlan tag?
Like wise below "stag".

I cannot remember if the C-tag or S-tag is the inner or outer vlan tag.

When reading BPF code that use these function names, then I would have
to ask Google for help, or find-and-read this doc.

Can we come-up with a more intuitive name, that e.g. helps when reading
the BPF-prog code?

> + * @ctx: XDP context pointer.
> + * @vlan_tag: Return value pointer.
> + *

IMHO right here, there should be a description.

E.g. for what a VLAN "tag" means.  I assume a "tag" isn't the VLAN id,
but the raw VLAN tag that also contains the prio numbers etc.

It this VLAN tag expected to be in network-byte-order ?
IMHO this doc should define what is expected (and driver devel must
follow this).

> + * Returns 0 on success or ``-errno`` on error.
> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	return -EOPNOTSUPP;
> +}
> +
> +/**
> + * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
> + * @ctx: XDP context pointer.
> + * @vlan_tag: Return value pointer.
> + *
> + * Returns 0 on success or ``-errno`` on error.

IMHO we should provide more guidance to expected return codes, and what
they mean.  IMHO driver developers must only return codes that are
described here, and if they invent a new, add it as part of their patch.

See, formatting in bpf_xdp_metadata_rx_hash and check how this gets
compiled into HTML.


> + */
> +__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
> +{
> +	return -EOPNOTSUPP;
> +}
> +

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
