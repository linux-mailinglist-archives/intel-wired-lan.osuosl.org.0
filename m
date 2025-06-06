Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 741CCAD0283
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Jun 2025 14:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9386584051;
	Fri,  6 Jun 2025 12:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tjupeB45eAGK; Fri,  6 Jun 2025 12:49:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1021A840CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749214186;
	bh=MDnLXBfrxz02E6SF0c9KYIDjYQCLXUA/z4j3XlLAmtg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N9p1JHyEwTm8diQ2Lzvp+xnQkR/gmCLnTjds+yK5lfpomtZXBRKXpYrLwf8P4ccAw
	 oC+WMFZhAUB7u/Ih/Pb5fdwKrBTmtGhWhEhXKKs81aE7jnsq83X/axYBmu7RIY8Zen
	 XA1HBogTU6b4enbHWcz57JuuohjWgySejuIGnt+Afubv7TF9XVsajXPxFuTWeiLTOF
	 CoFx42A4pC3twoqpWPw5M0goqCPN2jrvvXScdDSaN3lEBoyynIKKVkpj4VDt4Hz1vq
	 MSPE/cU9KdmFbZJblNd6EKrbIh0pREp7mPYKq4FMoesE3rvfJ1ZsN7afjP6jFzxgQd
	 qLQjmaDiKDevw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1021A840CA;
	Fri,  6 Jun 2025 12:49:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 369BBC8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D12240CE9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:49:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wqc5DBjqXVdm for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Jun 2025 12:49:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CED14095E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CED14095E
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CED14095E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Jun 2025 12:49:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0226D44CF5;
 Fri,  6 Jun 2025 12:49:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AC20C4CEEB;
 Fri,  6 Jun 2025 12:49:41 +0000 (UTC)
Date: Fri, 6 Jun 2025 13:49:39 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>
Message-ID: <20250606124939.GA120308@horms.kernel.org>
References: <20250520110823.1937981-6-karol.kolacinski@intel.com>
 <20250520110823.1937981-9-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520110823.1937981-9-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749214183;
 bh=qa+YPeb+eRNsWZdnWE9oqfhqUThmfef7mJq5ZAVHUc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nUHEkFSQjSEydDWEH5VNp5wwi7H+aVhHE/MxLx4IindMtheOm/1Q8N/KTlDwBxnsi
 oklGxeAsEsduwyadEI8ll+lEQFMIxV70u+Czu1qM9u+uGapSB11/EJ2wwfJt1LewYk
 RgZM5m3yZtY7doOGyhp6JavAmS9WMkM1W4OI5QJK7NDIMbnyj277Sf9P2MIcovKrAS
 VRGv/KqMfhuX3Gjo3duwzLCHb/5lDWcd8vAitKHHeUcfqcmYFp4QflUIHHF7WgTwgj
 pU/iKCeEK4u+Tcvmcv8YglGBVj8YGEksTwbHtECAR0Guvk24eS3VlaN+oCwQnLMeko
 l+8llu8hFQ/2w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nUHEkFSQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/4] ice: use spin_lock for
 sideband queue send queue
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

On Tue, May 20, 2025 at 01:06:28PM +0200, Karol Kolacinski wrote:
> Sideband queue is a HW queue and has much faster completion time than
> other queues.
> 
> With <5 us for read on average it is possible to use spin_lock to be
> able to read/write sideband queue messages in the interrupt top half.
> 
> Add send queue lock/unlock operations and assign them based on the queue
> type. Use ice_sq_spin_lock/unlock for sideband queue and
> ice_sq_mutex_lock/unlock for other queues.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>

...

> +/**
> + * ice_sq_spin_lock - Call spin_lock_irqsave for union ice_sq_lock
> + * @lock: lock handle
> + */
> +static void ice_sq_spin_lock(union ice_sq_lock *lock)
> +	__acquires(&lock->sq_spinlock)
> +{
> +	spin_lock_irqsave(&lock->sq_spinlock, lock->sq_flags);
> +}
> +
> +/**
> + * ice_sq_spin_unlock - Call spin_unlock_irqrestore for union ice_sq_lock
> + * @lock: lock handle
> + */
> +static void ice_sq_spin_unlock(union ice_sq_lock *lock)
> +	__releases(&lock->sq_spinlock)
> +{
> +	spin_unlock_irqrestore(&lock->sq_spinlock, lock->sq_flags);
> +}
> +
> +/**
> + * ice_sq_mutex_lock - Call mutex_lock for union ice_sq_lock
> + * @lock: lock handle
> + */
> +static void ice_sq_mutex_lock(union ice_sq_lock *lock)
> +	__acquires(&lock->sq_mutex)
> +{
> +	mutex_lock(&lock->sq_mutex);
> +}
> +
> +/**
> + * ice_sq_mutex_unlock - Call mutex_unlock for union ice_sq_lock
> + * @lock: lock handle
> + */
> +static void ice_sq_mutex_unlock(union ice_sq_lock *lock)
> +	__releases(&lock->sq_mutex)
> +{
> +	mutex_unlock(&lock->sq_mutex);
> +}

Sparse seems unhappy about the annotations on the mutex functions above,
but curiously happy with those for the corresponding spinlock functions.
I am unsure why.

  .../ice_controlq.c:803:13: warning: context imbalance in 'ice_sq_mutex_lock' - wrong count at exit
  .../ice_controlq.c:813:13: warning: context imbalance in 'ice_sq_mutex_unlock' - wrong count at exit


> +
> +static struct ice_sq_ops ice_spin_ops = {
> +	.lock = ice_sq_spin_lock,
> +	.unlock = ice_sq_spin_unlock,
> +};
> +
> +static struct ice_sq_ops ice_mutex_ops = {
> +	.lock = ice_sq_mutex_lock,
> +	.unlock = ice_sq_mutex_unlock,
> +};
> +

...
