Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CB9C43175
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 18:20:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B0E2B60709;
	Sat,  8 Nov 2025 17:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lliUYc1ADIiK; Sat,  8 Nov 2025 17:20:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0AF1606FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762622423;
	bh=245FECgiEJwbVFuGBJMyKrXvA4v2dbWrCYnXImQuMMQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bWZpNQ3iGNdYNgBuotWX8yW8xGSqOiXLfhmdvc/Fb0a5YB1xY2ZvZNu77sHCvaCx5
	 gWzeV5UrOrYiIoOPVQK57GsDZ3N/C8sBecQnPRkXPhfmNbs8G1/3xD3vYTarTDWs1x
	 xAsYS0Cbk6kjo8aovAnhF3QQz7YyRYQ3DfVbq+nZqGfFFK7nmeXa0XzdJNw6J+T4xQ
	 MaLD809RK6XbVPrCSRQ/N84OFZ3AdtwCcc7+sL7pWGGHYt2SeRjMCWFBB4/u+x1iEn
	 ehYU/GLekz5z1QBOi23AWY4dU8XhsHm2+1sh48sgsc7e9C/lWBPgPQwZIzWVjtSbwd
	 Ezmz2SFy6CtvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0AF1606FD;
	Sat,  8 Nov 2025 17:20:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EC1A72CD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 17:20:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DD71A606F6
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 17:20:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRTqKX39hEoX for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Nov 2025 17:20:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2929D6066A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2929D6066A
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2929D6066A
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Nov 2025 17:20:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7805D60007;
 Sat,  8 Nov 2025 17:20:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 533CAC4AF09;
 Sat,  8 Nov 2025 17:20:17 +0000 (UTC)
Date: Sat, 8 Nov 2025 17:20:15 +0000
From: Simon Horman <horms@kernel.org>
To: Joshua Hay <joshua.a.hay@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <aQ97z8ZZToGIxb3X@horms.kernel.org>
References: <20251021233056.1320108-1-joshua.a.hay@intel.com>
 <20251021233056.1320108-2-joshua.a.hay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021233056.1320108-2-joshua.a.hay@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1762622418;
 bh=4uBXZNjEeUsMFg1PyKHuxUfuFeuIUqbxNWqH+XsncZY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fBB0NZLp5IH2E2etese6w6N2OmdjvSftvJX5j98h1R8XtJu21Q7Dfhq51/XRWtgrH
 hGr4UIa+biFRFYlok4QKaNz8i1PExtd5xQPoBt5ukAjyafVjOa3uctbi8Lhy6hTBuq
 RDfyP/jmtOk/BBdbZ3XeKr1N4c81dpgZxrZ6HxQmsyHEN+kQ55F/x/wS8fSaD2EItr
 EHiiq4/jamcGK1luSUdnwf8jLfsf5fsdJdslUSvaFhPNc/tHYyoUA3K7nlo3D0z8fq
 a+B5U3ghKA+IPCsziyZQFhGvbMqmtQXMlwmbEA29VwCRWQHKs64bIPvopCeyatp7ZV
 zvHPGj4ZxFPEQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=fBB0NZLp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 01/10] idpf: introduce
 local idpf structure to store virtchnl queue chunks
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

On Tue, Oct 21, 2025 at 04:30:47PM -0700, Joshua Hay wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c

...

> @@ -1237,6 +1242,8 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>  
>  	return vport;
>  
> +free_qreg_chunks:
> +	kfree(adapter->vport_config[idx]->qid_reg_info.queue_chunks);

I think that the following is also needed here, to avoid a subsequent
double-free.

	adapter->vport_config[idx]->qid_reg_info.queue_chunks = NULL;

>  free_vector_idxs:
>  	kfree(vport->q_vector_idxs);
>  free_vport:

...

> @@ -3658,6 +3668,11 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
>  	rss_data = &vport_config->user_config.rss_data;
>  	vport_msg = adapter->vport_params_recvd[idx];
>  
> +	err = idpf_vport_init_queue_reg_chunks(vport_config,
> +					       &vport_msg->chunks);
> +	if (err)
> +		return err;
> +
>  	vport_config->max_q.max_txq = max_q->max_txq;
>  	vport_config->max_q.max_rxq = max_q->max_rxq;
>  	vport_config->max_q.max_complq = max_q->max_complq;
> @@ -3690,15 +3705,17 @@ void idpf_vport_init(struct idpf_vport *vport, struct idpf_vport_max_q *max_q)
>  
>  	if (!(vport_msg->vport_flags &
>  	      cpu_to_le16(VIRTCHNL2_VPORT_UPLINK_PORT)))
> -		return;
> +		return 0;
>  
>  	err = idpf_ptp_get_vport_tstamps_caps(vport);
>  	if (err) {
>  		pci_dbg(vport->adapter->pdev, "Tx timestamping not supported\n");
> -		return;
> +		return err == -EOPNOTSUPP ? 0 : err;

If a non-zero value is returned here, then
the allocation (of adapter->vport_config[idx]->qid_reg_info.queue_chunks)
made in idpf_vport_init_queue_reg_chunks() will be leaked.

I think it should be both freed and set to NULL in this error path.
Which I think suggests a helper to do so here and elsewhere.

Flagged by Claude Code with https://github.com/masoncl/review-prompts/


>  	}
>  
>  	INIT_WORK(&vport->tstamp_task, idpf_tstamp_task);
> +
> +	return 0;
>  }

...
