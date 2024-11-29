Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ACF9DE9BC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Nov 2024 16:37:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A011C60B49;
	Fri, 29 Nov 2024 15:37:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VP_eBUJZY0zO; Fri, 29 Nov 2024 15:37:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA6B660B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1732894673;
	bh=C4lSa2k5avuy1/0rqwlB+ZozQszT7LmIlkao2GIr0D8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jLjsiwheYSoZXNOxEwZ/j896TAxqnrwHVet8gmHDoN+Rqf/MUpXr1ZK/PXct8Ufz0
	 7WmOjwMC/JW4Hw0e+8OP6n/L5uyTn+2XvI8wAb++TFbx28n7JniLfYdnCvMlHAsnnv
	 WCmBKpB/fSx673NVVbIc7yRUuxTb6sTYeMnoLBdQhE5nWpYu/Ad/YN3Gbp8p7Lf7mE
	 xtIz0d5JYjk0BRd6/krIn2TlmiwAW0iPmK/LG1viFQvVAczAUJ10LMMYWg8QtuaHpW
	 lvMV6pq5sWfbVUM5OL8IOAdUAit6jZhQ+MpM6Y41c4fG91txD5Yx4hm5VlmAzeaIYl
	 wob2XPKeJC+zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA6B660B45;
	Fri, 29 Nov 2024 15:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E55D8A6A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CCC4C84691
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bKgV4vfS6zkm for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Nov 2024 15:37:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f2a; helo=mail-qv1-xf2a.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC88D84694
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC88D84694
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC88D84694
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 15:37:50 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id
 6a1803df08f44-6d8878ec049so4940886d6.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Nov 2024 07:37:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732894669; x=1733499469;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=C4lSa2k5avuy1/0rqwlB+ZozQszT7LmIlkao2GIr0D8=;
 b=iVyKeRrf/fGFD1R2uyCz1SjKr4MyxxwcYu4amI++WEO5cGTeBnHxSTkBQCVgfmeS4i
 g/tbHl1N468NEY+fS1XdZabF39dc6rkMqywcB2unQP3/KMOSZcdQVsVQdtydCCf5QTeJ
 z1yG/dOtV6AjxpX2ieLTk/LQO9/zL8ZdhYPJBavIa8B4WNYH1P3/UYtx7T//1XYnp0uF
 Q69qQ9P1MAXbybPNDCtCnLPxSVbsyxRrpaO+yLTduI5niyr5gvwhFxAo/7f4UarmQdPK
 keCos6kZxrn3NCNJYrqJhje1HQbHN8/wUwixtiUj+NabmfFgRW4ADTLtfi52PSMXmbju
 JoZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVFmhZXDcsj2eSPeEExLOMGDTAEd5ZdF2MzBvNG9EkfINnob6KSyxT5Ut3JVa3EAbTzfM/+/emDJ9u6BUzX2sQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz3kGhGmhUQpJbX9ELNtTIvIwsqVoVbjwaBp5yEGuT2MPHHkKHw
 9sHjMr9ylMsyG9coxEhb9Htdjz7G6dfjrje7mZcM+vufA970ATvU
X-Gm-Gg: ASbGncs/cYme+2oVaXon+JqcbYixrxaYUrkXxUbxv24ml6X2hUN52bnevG/f5muNIVi
 gTirJXObhwLkOFZl19UNdO222H5geGwHMUlY2o8UzwQGEdisV3YNq9CvMvF4dREHQwspe27vke7
 K32rp3lm3yGQWwSYarsKG6DbxbTvH96j11YCKCVyuGTm5mtLSjN+owVl0YW6OnUziL9mkZ8z9XV
 yNo+xc0KB46RXeIRL8jR8cfisOZOb/11aP0ThkX0q/mj5Ox8cUDd/u+S6iauryoP9cuGEUuGReb
 MIh9lDtzYwQkPOHoc9sjAw==
X-Google-Smtp-Source: AGHT+IHekeEK7b1XZLO6Tq6Psxgik5Oe6Z0aFTiDrNLP6NZ8DNZOmzvF1b4zfysABXWL7BzA4c+tvg==
X-Received: by 2002:a0c:eb85:0:b0:6d8:821d:7370 with SMTP id
 6a1803df08f44-6d8821db4aemr53306806d6.49.1732894669415; 
 Fri, 29 Nov 2024 07:37:49 -0800 (PST)
Received: from localhost (250.4.48.34.bc.googleusercontent.com. [34.48.4.250])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6d8752309edsm17038056d6.131.2024.11.29.07.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2024 07:37:48 -0800 (PST)
Date: Fri, 29 Nov 2024 10:37:48 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Emil Tantilov <emil.s.tantilov@intel.com>, 
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <6749dfcc21228_23772a29463@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241126035849.6441-8-milena.olech@intel.com>
References: <20241126035849.6441-1-milena.olech@intel.com>
 <20241126035849.6441-8-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1732894669; x=1733499469; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C4lSa2k5avuy1/0rqwlB+ZozQszT7LmIlkao2GIr0D8=;
 b=ix2IbIdmB7AbqVNn3N0SNIBzP0JZj8RfD8hw7haISoVi31gTh2O6csAfUTWKHGm6DF
 sH/deRyLNoG9y0Yv/V5qB4vop/cNOQOSjbhrW7Epppn3VCpMaii1L4A7HY2SFA1z1wS/
 T25HFWedtNJ5TEq7ctGe3MfAffDeJst5IY4/ohr+m8AlGGAnDrBkY3bLfL55SUE63HQ2
 sorK6mev5DW/+fgBW1aITGN45jQkCfuZgKfnbs+o7+SaE3lbRyne4zo7Bm8sX2LJSg3B
 WvICVl1iQ86a6LDSp1jJNO3vJ5A3jjYZTh4uaNq4VFXEVm4rKYxJgEPW53p2fyMuHGYj
 p8gQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=ix2IbIdm
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 07/10] idpf: add Tx
 timestamp capabilities negotiation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Milena Olech wrote:
> Tx timestamp capabilities are negotiated for the uplink Vport.
> Driver receives information about the number of available Tx timestamp
> latches, the size of Tx timestamp value and the set of indexes used
> for Tx timestamping.
> 
> Add function to get the Tx timestamp capabilities and parse the uplink
> vport flag.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Co-developed-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Co-developed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v1 -> v2: change the idpf_for_each_vport macro
> 
>  drivers/net/ethernet/intel/idpf/idpf.h        |   6 +
>  drivers/net/ethernet/intel/idpf/idpf_ptp.c    |  69 ++++++++++
>  drivers/net/ethernet/intel/idpf/idpf_ptp.h    |  96 ++++++++++++-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   |  11 ++
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   | 128 +++++++++++++++++-
>  drivers/net/ethernet/intel/idpf/virtchnl2.h   |  10 +-
>  6 files changed, 317 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index 1607e9641b23..14b82e93dab5 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -292,6 +292,7 @@ struct idpf_port_stats {
>   * @port_stats: per port csum, header split, and other offload stats
>   * @link_up: True if link is up
>   * @sw_marker_wq: workqueue for marker packets
> + * @tx_tstamp_caps: The capabilities negotiated for Tx timestamping
>   */
>  struct idpf_vport {
>  	u16 num_txq;
> @@ -336,6 +337,8 @@ struct idpf_vport {
>  	bool link_up;
>  
>  	wait_queue_head_t sw_marker_wq;
> +
> +	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
>  };
>  
>  /**
> @@ -480,6 +483,9 @@ struct idpf_vport_config {
>  
>  struct idpf_vc_xn_manager;
>  
> +#define idpf_for_each_vport(adapter, i) \
> +	for ((i) = 0; (i) < (adapter)->num_alloc_vports; (i)++)
> +

I did not mean to make the code less readable. My suggestion was

    #define idpf_for_each_vport(adapter, vport) \
        for (int i = 0; vport = &(adapter)->vports[i], i < (adapter)->num_alloc_vports; i++)

I see that this now requires defining a variable i outside of the
loop. I suppose because of a possible namespace collision otherwise?

That can be addressed with the same stringification as the original
code. But then may as well revert to that. The following is no
more readable

    #define idpf_for_each_vport(adapter, vport) \
        for (int __idx_##vport = 0; \
             vport = &((adapter)->vports[__idx_##vport]), __idx_##vport < (adapter)->num_alloc_vports; \
             __idx_##vport++)

Please choose whichever path you prefer, including the original.

Not for this series, but a wrapper might also be helpful for
idpf_vport_for_each_rxq. To isolate the singleq vs splitq in one
location. I see that come up a come up times in this series too.
