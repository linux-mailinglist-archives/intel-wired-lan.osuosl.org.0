Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C03B94C042
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Aug 2024 16:54:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1448540B6B;
	Thu,  8 Aug 2024 14:54:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LBlD6EtRJLgL; Thu,  8 Aug 2024 14:54:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D44D409A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723128855;
	bh=iWn8ugeEIshJ5ioXe17o+i564FVBusnrR+y2i09Z3wU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3XXbHApybl+lztwiRYUV+PNp34lVr1nGdZAeKs2Hs47/Pb5KMPBjWl96EVrt+jBc3
	 vk0RgHjzAZLwd1x0Cd23aSffM911YjQDrkPv7RYeIEokX8c0UrLA/zmIH+PSawFLiC
	 znbYCGT8Uccda/ZDgl7PRJDPZ3QAx1dF2TD1dmeM6dn1reBk8ptJ5ULa3s+GeGBzzU
	 cZ+lEKUugTEvVx2s0zYRCXD6hLAK8OhAsTONjyHYaKhiuc9o/B+xjzvk1NiTVdxoNH
	 WVWbF7Pr41B2Iio411mspWvH4D8mFk2gnqUOMvDfFWrZxxm6Fl+v5GACv09PWCEOn+
	 WpBCC3sRpVBqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D44D409A5;
	Thu,  8 Aug 2024 14:54:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41D871BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2E3D540E19
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7h7m6rIDZYRg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2024 14:54:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3467E40042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3467E40042
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3467E40042
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2024 14:54:11 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-551-e3mGTPFcPEWu-sA9ii-lrg-1; Thu,
 08 Aug 2024 10:54:07 -0400
X-MC-Unique: e3mGTPFcPEWu-sA9ii-lrg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id ED5CA19775FA; Thu,  8 Aug 2024 14:54:05 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.192.194])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 3ECDC19560A3; Thu,  8 Aug 2024 14:54:05 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id D3613A80E94; Thu,  8 Aug 2024 16:54:02 +0200 (CEST)
Date: Thu, 8 Aug 2024 16:54:02 +0200
From: Corinna Vinschen <vinschen@redhat.com>
To: christopher.s.hall@intel.com
Message-ID: <ZrTcCrwBSo4RtYjj@calimero.vinschen.de>
Mail-Followup-To: christopher.s.hall@intel.com,
 intel-wired-lan@lists.osuosl.org, david.zage@intel.com,
 vinicius.gomes@intel.com, netdev@vger.kernel.org,
 rodrigo.cadore@l-acoustics.com
References: <20240807003032.10300-1-christopher.s.hall@intel.com>
 <20240807003032.10300-3-christopher.s.hall@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240807003032.10300-3-christopher.s.hall@intel.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1723128850;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iWn8ugeEIshJ5ioXe17o+i564FVBusnrR+y2i09Z3wU=;
 b=XK1FOZeu+1XYl5VALD9roWI+aAmdqCi6d45V7H91aYXag2UhId07sCdzPBQxDU3Ea1PJaA
 c6GUcYe4VOreYM0TqOaK8KZGCXAtaC3f5nIluEQwt+NKtMQSAfaGFPXNcFe7Jc/MClOFWK
 nxbIZ5BC3SQHFklxDKmctgWkpr018Sg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=XK1FOZeu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 2/5] igc: Lengthen the
 hardware retry time to prevent timeouts
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
Cc: vinicius.gomes@intel.com, netdev@vger.kernel.org, david.zage@intel.com,
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Aug  6 17:30, christopher.s.hall@intel.com wrote:
> From: Christopher S M Hall <christopher.s.hall@intel.com>
> 
> Lengthen the hardware retry timer to four microseconds.
> 
> The i225/i226 hardware retries if it receives an inappropriate response
> from the upstream device. If the device retries too quickly, the root
> port does not respond.
> 
> The issue can be reproduced with the following:
> 
> $ sudo phc2sys -R 1000 -O 0 -i tsn0 -m
> 
> Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
> quickly reproduce the issue.
> 
> PHC2SYS exits with:
> 
> "ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
>   fails
> 
> Fixes: 6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 1 us")
> Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
> index ec191d26c650..253327c23903 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -564,7 +564,7 @@
>  #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
>  #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
>  
> -#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
> +#define IGC_PTM_SHORT_CYC_DEFAULT	4   /* Default short cycle interval */
>  #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
>  #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
>  
> -- 
> 2.34.1

Reviewed-by: Corinna Vinschen <vinschen@redhat.com>

