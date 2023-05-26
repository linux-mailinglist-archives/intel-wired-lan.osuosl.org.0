Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 640A6712E9B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 23:01:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6383384B93;
	Fri, 26 May 2023 21:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6383384B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685134860;
	bh=Fv9R4L//6pLcu1Prpp4eKK+LJFk3FAy+iCznKN8cebM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UWO9fEcgK3Yeu65l71IE9bOK7jSbAliB4AZY31Vhh4qoaoT5ltniOnH65+tapgC+5
	 b/PDIXfu3GYSLnsEbYcgR+pGi6HRa5L/Md1qzNoV7HoYhwdkUjylS+vmOvTCJmfVYu
	 XyD0rv8oz9DdxjwyButEaKjKMidk2fzIDAQ5Ge1MgCelnv2IuhRsG3zhfQZ07dc19q
	 nyIBeJKMYc6VUC2OCrc8EJAA1SbkkrD4TJt2aMLvCgjWAO8XTB5F8LMYKUTn5inY25
	 OT/0plTpJco+fQdnquQKZRSU9keb4lJ65dmpNE/NSloNtkZwJWuvSEAuWUomswUv6O
	 aiPZcQqXdqT0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hqUwIoU-wfLg; Fri, 26 May 2023 21:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3D69A845C2;
	Fri, 26 May 2023 21:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D69A845C2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B12691BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 21:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 892C742FD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 21:00:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 892C742FD6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3Nnsx3KPy6g for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 21:00:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8304540108
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com
 [IPv6:2607:f8b0:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8304540108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 21:00:52 +0000 (UTC)
Received: by mail-pf1-x436.google.com with SMTP id
 d2e1a72fcca58-64d30ab1f89so1014889b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 14:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685134852; x=1687726852;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ysEB3TrSbfOrgA9FR4FkyBXy/5R3r970UROIlGdQbeM=;
 b=TqW/ltimR1YWP3/LitiO8KY29iG3gLptEKdaBjuqSD3APVHunKHnK5VmEwfiVOU4AK
 hEo/4b9dcT7mUcclyAfmFPGL3u8ziJTvD4vDbLB8xXXztNNFL6blKUQfTy9O5D+oOI1v
 JrRn233ST9CkOXluCU6/SL9SXGwUWLVSGboZYgLTcjgXRG5wMVH9yE0zGm2kmHuKWw1O
 Low4wCd3vWOXp8pVnK3e2Sz4zHDppiqJsfH8j1cU/cH59XLJEXUNetaEOlF9cQgsLw1w
 2USthsEQpO3P2KqioXZ9qQlkCA/V60FfEnrhxufmvoCcJRxY6qHjFeEpz7U9WtGwbr9A
 pipw==
X-Gm-Message-State: AC+VfDyih3fBKCQ2tQI5zRIN7WA4UeZViMw3d1ChrP6l/OQ6C2iaIVqq
 LPTP8dLGuA2YhcjJH/yfOs4frA==
X-Google-Smtp-Source: ACHHUZ4/lR1eDBoUYP08CmKaLuvmX5MhsSXCw931slnptyNF8cayHqvMk/u2bmUX4fNNayenLkoT1w==
X-Received: by 2002:a05:6a21:999e:b0:10c:49e:6c67 with SMTP id
 ve30-20020a056a21999e00b0010c049e6c67mr744819pzb.33.1685134851856; 
 Fri, 26 May 2023 14:00:51 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 t4-20020aa79384000000b005aa60d8545esm3085995pfe.61.2023.05.26.14.00.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 May 2023 14:00:51 -0700 (PDT)
Date: Fri, 26 May 2023 14:00:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <202305261358.EA0ACE712@keescook>
References: <ZGLR3H1OTgJfOdFP@work>
 <692650e7-c006-4f89-3b11-dd2f193f510c@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <692650e7-c006-4f89-3b11-dd2f193f510c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1685134852; x=1687726852;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ysEB3TrSbfOrgA9FR4FkyBXy/5R3r970UROIlGdQbeM=;
 b=YyDaOhIzVZ5GWdlSNV5YF5iCNqGBU8gzhVHHQm4mhG/DAGqAKRL4mNA2ATxNfGkodP
 5n38novKPUqRNZRr+ZsFlMPguyFMsRysxa/MJgGETi4wxn4NBUT68K4Bzaboyb78TTkS
 GrLQwQafvFN1Xef1oehnbAzoKUicsYBPVA0u4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=YyDaOhIz
Subject: Re: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array
 with flexible-array member
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
Cc: netdev@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 linux-hardening@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 23, 2023 at 11:19:00AM -0700, Tony Nguyen wrote:
> On 5/15/2023 5:44 PM, Gustavo A. R. Silva wrote:
> > One-element arrays are deprecated, and we are replacing them with flexible
> > array members instead. So, replace one-element array with flexible-array
> > member in struct iavf_qvlist_info, and refactor the rest of the code,
> > accordingly.
> > 
> > This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
> > routines on memcpy() and help us make progress towards globally
> > enabling -fstrict-flex-arrays=3 [1].
> > 
> > Link: https://github.com/KSPP/linux/issues/79
> > Link: https://github.com/KSPP/linux/issues/289
> > Link: https://gcc.gnu.org/pipermail/gcc-patches/2022-October/602902.html [1]
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> > ---
> >   drivers/net/ethernet/intel/iavf/iavf_client.c | 2 +-
> >   drivers/net/ethernet/intel/iavf/iavf_client.h | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.c b/drivers/net/ethernet/intel/iavf/iavf_client.c
> > index 93c903c02c64..782384b3aa38 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_client.c
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_client.c
> > @@ -470,7 +470,7 @@ static int iavf_client_setup_qvlist(struct iavf_info *ldev,
> >   	v_qvlist_info = (struct virtchnl_rdma_qvlist_info *)qvlist_info;
> >   	msg_size = struct_size(v_qvlist_info, qv_info,
> > -			       v_qvlist_info->num_vectors - 1);
> > +			       v_qvlist_info->num_vectors);
> 
> The problem is this mirrors the virtchnl struct (virtchnl_rdma_qvlist_info)
> so that structure needs to change as well... However, this goes back to the
> interface that virtchnl provides between PF and VF [1].
> 
> I think removing the iavf structure and directly using the virtchnl one
> would make sense. We'd need to adjust virtchnl and follow Kees' suggestion
> [2].

Note that at the time I suggested "[0]", but it should have been
"[]". But, yes, Keeping the "over allocation" is fine since it's a
hardware ABI.

Alternatively, it could be defined with a union to keep all the sizes
the same:

 struct iavf_qvlist_info {
 	u32 num_vectors;
-	struct iavf_qv_info qv_info[1];
+	union {
+		struct iavf_qv_info single_qv_info;
+		DECLARE_FLEX_ARRAY(struct iavf_qv_info, qv_info)
+	};
 };

-Kees

> 
> >   	adapter->client_pending |= BIT(VIRTCHNL_OP_CONFIG_RDMA_IRQ_MAP);
> >   	err = iavf_aq_send_msg_to_pf(&adapter->hw,
> > diff --git a/drivers/net/ethernet/intel/iavf/iavf_client.h b/drivers/net/ethernet/intel/iavf/iavf_client.h
> > index c5d51d7dc7cc..500269bc0f5b 100644
> > --- a/drivers/net/ethernet/intel/iavf/iavf_client.h
> > +++ b/drivers/net/ethernet/intel/iavf/iavf_client.h
> > @@ -53,7 +53,7 @@ struct iavf_qv_info {
> >   struct iavf_qvlist_info {
> >   	u32 num_vectors;
> > -	struct iavf_qv_info qv_info[1];
> > +	struct iavf_qv_info qv_info[];
> >   };
> >   #define IAVF_CLIENT_MSIX_ALL 0xFFFFFFFF
> 
> [1] https://lore.kernel.org/intel-wired-lan/f3674339c0390ced22b365101f2d3e3a2bf26845.camel@intel.com/
> [2] https://lore.kernel.org/intel-wired-lan/202106091424.37E833794@keescook/

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
