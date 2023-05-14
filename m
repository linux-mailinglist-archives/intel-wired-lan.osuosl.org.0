Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4858D701B17
	for <lists+intel-wired-lan@lfdr.de>; Sun, 14 May 2023 03:47:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 989FD6151A;
	Sun, 14 May 2023 01:47:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 989FD6151A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684028845;
	bh=MlC5uZeuzbIAmr9i/R1KdRAePMtifT9+yxuGF5CkfZ8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eBHpWiOk1HlruQ8am93VlIUpC5ZzZAAmJyVNbPwHDDj41HH8cQkBeKS5Q84udjrsZ
	 8GgIXB+dfc6FApI1uwvBScxtjGUiXM+Litkl3TOeD5lblBwcEHwi1whIuqxk9BvQqw
	 iDYSheWMrt6HlxiMSgFKfOfKB5EadSN+O8W8XP/8CgEltfm5n4TljSNz/TN6BRh+fJ
	 HD2tsKjseAc3Mq3UsCAahwZ8R7dPsLZ+CvQDrK4battwxI7SlT0ho7FJPl/pJ1wu+K
	 GBV/OCbgR5utT8cEPT99u8y7/GE8q3WICXuYKyHPNm2NOeiA2eW/xPLVyXcfgNEVkg
	 NJ7qf7s3gd1ZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUTfjhLjgW9F; Sun, 14 May 2023 01:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9AE661513;
	Sun, 14 May 2023 01:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9AE661513
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DF0BA1BF5AD
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B48B442A32
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:47:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B48B442A32
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AgU4s_pAjJyq for <intel-wired-lan@lists.osuosl.org>;
 Sun, 14 May 2023 01:47:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C99A9429B4
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C99A9429B4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 14 May 2023 01:47:17 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id
 41be03b00d2f7-5304d0d1eddso3087380a12.2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 May 2023 18:47:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684028837; x=1686620837;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JZZSPgxHMb9KTgt/p8BHfYbPkv5futWetAPzR8az6J4=;
 b=H+a3N1rNexusbZiSRgpnRV5abmz1yNE9mFLgoQnERORBN40BhnXeHOS1p7tZnD/fOK
 aBJ9aIn2WK9MBtmgbG1ACmePr2HtadiEptsj7ohcvrLUwR+K20ulGjI/alT3UxrNcRBd
 IEDiscAGTK5RIFiN8Wcy7GwRbmAG/BGPSGgmdL3aRg5NK8nzN+mtPbySoDZrNSqhM+ak
 4fN/W0ZnPfne9IiHTUBgZqqaFlcRnukMKK/cvkpWxFoSYbucdxZYFKUbJ4NlRDYVwJL2
 4tPJ6p3N96mmUbvxOgI9JzOHdhFFKmI7Jf2vimVT40zJrID/0Ks3bLXBRWYz81cp5eUO
 lPVg==
X-Gm-Message-State: AC+VfDw3xLnbCibXJKxkSjNRRQVGSNHJBwZKy6M4YvhIYksARHoAJnvT
 pkPHNgfa3tOkpBoc2SC03PqCJA==
X-Google-Smtp-Source: ACHHUZ4CxxfYqJxRxC7jj/D/X8SOFKdliJ1UPE1X8yzKhgLdFarTzODc8gvjzR4sa3s9zrokPHwKBA==
X-Received: by 2002:a17:903:22c9:b0:1aa:cf25:41d0 with SMTP id
 y9-20020a17090322c900b001aacf2541d0mr41486752plg.33.1684028836981; 
 Sat, 13 May 2023 18:47:16 -0700 (PDT)
Received: from hermes.local (204-195-120-218.wavecable.com. [204.195.120.218])
 by smtp.gmail.com with ESMTPSA id
 x5-20020a170902b40500b0019a6cce2060sm10470048plr.57.2023.05.13.18.47.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 May 2023 18:47:16 -0700 (PDT)
Date: Sat, 13 May 2023 18:47:14 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20230513184714.4e0b9315@hermes.local>
In-Reply-To: <20230513225710.3898-9-emil.s.tantilov@intel.com>
References: <20230513225710.3898-1-emil.s.tantilov@intel.com>
 <20230513225710.3898-9-emil.s.tantilov@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20221208.gappssmtp.com; s=20221208; t=1684028837;
 x=1686620837; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JZZSPgxHMb9KTgt/p8BHfYbPkv5futWetAPzR8az6J4=;
 b=NN9JZG+RYsdg7Xg074XpATthENk4Rg/fbQCKuEykRfLgMKZX7MFKdt+EQkh7WBaLUM
 vE1NoRgHLwCJkhlI6R3sYFkG1zytzPCZzuUb8uAvcHB98dNnSUGGitiK1Q9wCV/46HHI
 /sWLVxdxFrhQKkA9KhGpGIJs4qV9RiLgBkHvRTlAz4DT/Qr229wNrm0WNFVyzCIjBI8s
 +RLEvfc02SIUoPke5KCtz5ABV6f9VC2n0gitRo3bK+KnDa9uRVM9kT1k66VEM36AVjBV
 Fcr4cfBKBCM971QqhXkGf+FmSSJJtTsXCQo/T9NfSPcnDWgE0aLDt8il3k3PaQqjauAF
 FUsg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=networkplumber-org.20221208.gappssmtp.com
 header.i=@networkplumber-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=NN9JZG+R
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/15] idpf: configure
 resources for RX queues
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 simon.horman@corigine.com, jesse.brandeburg@intel.com, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 anthony.l.nguyen@intel.com, Phani Burra <phani.r.burra@intel.com>,
 decot@google.com, davem@davemloft.net, shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 13 May 2023 15:57:03 -0700
Emil Tantilov <emil.s.tantilov@intel.com> wrote:

> +/**
> + * idpf_is_feature_ena - Determine if a particular feature is enabled
> + * @vport: vport to check
> + * @feature: netdev flag to check
> + *
> + * Returns true or false if a particular feature is enabled.
> + */
> +static inline bool idpf_is_feature_ena(struct idpf_vport *vport,
> +				       netdev_features_t feature)
> +{
> +	return vport->netdev->features & feature;
> +}

Minor nit. You could make vport const here?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
