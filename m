Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1134870EC2F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 05:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 946EA60E48;
	Wed, 24 May 2023 03:54:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 946EA60E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684900446;
	bh=VlL+yuamC0K/q6WFJ5XeA8uHIMf3TclTTWy45R9jeAM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MAOZHL2cw5oNEKc9cCMzISPwjQqotcKYjfdZUVxhqTfhAMAMrH5tzZ6XqgM6QMwjr
	 VHpTxm+BNYj/zIUjOzkllloopXA+i+ylj/3ThJiQ0ujvAc0m3g5DjcDof/JrNRLDxA
	 /Jj7P7TnxsuWFr2T1/zt3fCWcIVFkZie+MEyktp1W5nWv0VS0NPp/HVMMlvVAVaiMB
	 3kjZT7tQr1CVwlf7tMVJC27uiNf38uYHL1O73wTqGMR/IXG4ctEqdbQUFEt+N5x6ho
	 POrQUfnqYCcogLTPVeI78v59Srz83oqEipvXm/45I8bRnJNKhpbzMGd1mv9qPOFQni
	 6n8f2qQEuSaEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vx3LVU02DRgG; Wed, 24 May 2023 03:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60FE960BB2;
	Wed, 24 May 2023 03:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60FE960BB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7AEC1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 03:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8EB834245F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 03:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EB834245F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bkUH1cLCaAnl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 03:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C6A042068
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9C6A042068
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 03:53:58 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D568863866;
 Wed, 24 May 2023 03:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD908C433D2;
 Wed, 24 May 2023 03:53:55 +0000 (UTC)
Date: Tue, 23 May 2023 20:53:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20230523205354.06b147c6@kernel.org>
In-Reply-To: <20230522211810.never.421-kees@kernel.org>
References: <20230522211810.never.421-kees@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1684900437;
 bh=4f1gt/BCfbLHog09/Xsin0iYouAloZtBkhPaw5h+3Uk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=VTjRau/bNOfmdJ33zPP9fzppLzalj2n66xWeUM8et/U2kDIXenWJlws9ke/J63cua
 7h8nbEpBrHk+3kbBwK4hYrTG0TJuuA4Y8nyVrZV34Feh/wVZUCXe9pHkiL5GrZpTPb
 1pUq0WoLiV4z1hh/q8nIAUP6Q7nvRsPe6zxlxMbem5vTDjKC2IBSsISEX6TycDAT+K
 E11xrcZaYzPDD+AvVcAUfQueTdIeTLMtPcPMx7rpOceZRwETWUuo1o7AcoLQuOypBm
 fbpREO7W2cFcnLHLSfIPlJAIvbGWiK22cduJxuIMSKGEpMfWr2jO0/7hSlREuEGrtM
 7Bq4VihlXfeWA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=VTjRau/b
Subject: Re: [Intel-wired-lan] [PATCH] overflow: Add struct_size_t() helper
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
Cc: "Darrick J. Wong" <djwong@kernel.org>, Daniel Latypov <dlatypov@google.com>,
 storagedev@microchip.com, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>, Guo Xuenan <guoxuenan@huawei.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Kashyap Desai <kashyap.desai@broadcom.com>,
 Christoph Hellwig <hch@infradead.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Dave Chinner <dchinner@redhat.com>, Keith Busch <kbusch@kernel.org>,
 HighPoint Linux Team <linux@highpoint-tech.com>,
 megaraidlinux.pdl@broadcom.com, Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Shivasharan S <shivasharan.srikanteshwara@broadcom.com>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, linux-xfs@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>,
 Tales Aparecida <tales.aparecida@gmail.com>,
 Don Brace <don.brace@microchip.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 22 May 2023 14:18:13 -0700 Kees Cook wrote:
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.h b/drivers/net/ethernet/intel/ice/ice_ddp.h
> index 37eadb3d27a8..41acfe26df1c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.h
> @@ -185,7 +185,7 @@ struct ice_buf_hdr {
>  
>  #define ICE_MAX_ENTRIES_IN_BUF(hd_sz, ent_sz)                                 \
>  	((ICE_PKG_BUF_SIZE -                                                  \
> -	  struct_size((struct ice_buf_hdr *)0, section_entry, 1) - (hd_sz)) / \
> +	  struct_size_t(struct ice_buf_hdr,  section_entry, 1) - (hd_sz)) / \
>  	 (ent_sz))
>  
>  /* ice package section IDs */
> @@ -297,7 +297,7 @@ struct ice_label_section {
>  };
>  
>  #define ICE_MAX_LABELS_IN_BUF                                             \
> -	ICE_MAX_ENTRIES_IN_BUF(struct_size((struct ice_label_section *)0, \
> +	ICE_MAX_ENTRIES_IN_BUF(struct_size_t(struct ice_label_section,  \
>  					   label, 1) -                    \
>  				       sizeof(struct ice_label),          \
>  			       sizeof(struct ice_label))
> @@ -352,7 +352,7 @@ struct ice_boost_tcam_section {
>  };
>  
>  #define ICE_MAX_BST_TCAMS_IN_BUF                                               \
> -	ICE_MAX_ENTRIES_IN_BUF(struct_size((struct ice_boost_tcam_section *)0, \
> +	ICE_MAX_ENTRIES_IN_BUF(struct_size_t(struct ice_boost_tcam_section,  \
>  					   tcam, 1) -                          \
>  				       sizeof(struct ice_boost_tcam_entry),    \
>  			       sizeof(struct ice_boost_tcam_entry))
> @@ -372,8 +372,7 @@ struct ice_marker_ptype_tcam_section {
>  };
>  
>  #define ICE_MAX_MARKER_PTYPE_TCAMS_IN_BUF                                    \
> -	ICE_MAX_ENTRIES_IN_BUF(                                              \
> -		struct_size((struct ice_marker_ptype_tcam_section *)0, tcam, \
> +	ICE_MAX_ENTRIES_IN_BUF(struct_size_t(struct ice_marker_ptype_tcam_section,  tcam, \
>  			    1) -                                             \
>  			sizeof(struct ice_marker_ptype_tcam_entry),          \
>  		sizeof(struct ice_marker_ptype_tcam_entry))

Acked-by: Jakub Kicinski <kuba@kernel.org>

but Intel ICE folks please speak up if this has a high chance of
conflicts, I think I've seen some ICE DDP patches flying around :(
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
