Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D4CA85A5E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 12:44:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F316641DEA;
	Fri, 11 Apr 2025 10:44:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6BnI1B1jucwO; Fri, 11 Apr 2025 10:44:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 651B640B5C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744368280;
	bh=zySnXiZfHxAN8eOczQFDuykMQj3/0NoKFcFyL9J6Vts=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VSVqfYpy1kwQF1NB4NoN1498D9trXjeckcZDgp2hwHnHffXvGoGHQYK3uiyrEJr22
	 4Qd+ZI/99IfimTQKeF2DYwOdVyXPHZW01HVLYqPuJ6cI59yhVH7dhPf4pUuSSlTijy
	 x+VrPSdT1R5h74XGkaOd09JTXfWll3hC0sOIGH3bLPzn+iv7ynSCJe2gWJALfksKqU
	 ruaET0fTTo9geL/O+txr/rWJcZdjXPLR51pu5UjCed7dubQH9pnJD6hEbtnugkbGxP
	 92RooT0w2zksrKjV2ra80TejXGEGf/mNGkg3mh1mDSblIPfwLJbtICQTfO68Z0r8rz
	 wC3ZxvPZKHJLA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 651B640B5C;
	Fri, 11 Apr 2025 10:44:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id CAADD108
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B98DE6F5FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AT04yqYWOf3R for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 10:44:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2623860E37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2623860E37
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2623860E37
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 10:44:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5824B68457;
 Fri, 11 Apr 2025 10:44:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9E2FC4CEE7;
 Fri, 11 Apr 2025 10:44:34 +0000 (UTC)
Date: Fri, 11 Apr 2025 11:44:32 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Message-ID: <20250411104432.GZ395307@horms.kernel.org>
References: <20250409062945.1764245-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250409062945.1764245-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744368276;
 bh=h4bx2Fgct43nQkrQDm6FzxOeMDQd5ZE9c+zZxfj9pOM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pqdLASoABuEw8IDTeBaQSGMFQlpZHSA/zBZ53vpub/9yBTsPWm8P/80cm7q7P0lAI
 Cg1WdppcD8MQO5yeISDsIhgkFXwjBvPrMggqLIuXPqjePAUBhNX61AAK8UsPsmNsTN
 f911S4uK/x/lfoWG1ooV1BQ1Nct+u4j2ymrl74RmekSKBpFn1hhtjFMBomML5jOLrO
 rzyMbBqPC/3fxPHqd0JdtpxFiyT1JOJXFYZCLYoJiSOEko9MGqg2hQ4YgMSNMh5tTB
 CWQ5dfpjfKH3ybaEclwSH2huKI2bNsdOg4OeyHUSR9VdA6FL4fQdIYagNMy7jDxYvd
 YotDyt9ThKyKg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=pqdLASoA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] idpf: remove unreachable
 code from setting mailbox
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

On Wed, Apr 09, 2025 at 08:29:45AM +0200, Michal Swiatkowski wrote:
> Remove code that isn't reached. There is no need to check for
> adapter->req_vec_chunks, because if it isn't set idpf_set_mb_vec_id()
> won't be called.
> 
> Only one path when idpf_set_mb_vec_id() is called:
> idpf_intr_req()
>  -> idpf_send_alloc_vectors_msg() -> adapter->req_vec_chunk is allocated
>  here, otherwise an error is returned and idpf_intr_req() exits with an
>  error.

I agree this is correct, but perhaps it would be clearer to say something
like this:

* idpf_set_mb_vec_id() is only called from idpf_intr_req()
* Before that idpf_intr_req() calls idpf_send_alloc_vectors_msg()
* idpf_send_alloc_vectors_msg() allocates adapter->req_vec_chunk

> 
> The idpf_set_mb_vec_id() becomes one-linear and it is called only once.

nit: one liner

> Remove it and set mailbox vector index directly.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Reviewed-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

The above notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

