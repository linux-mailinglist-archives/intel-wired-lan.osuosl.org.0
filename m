Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D839EB37076
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 84F19808F5;
	Tue, 26 Aug 2025 16:34:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hIy2NN_aPOBm; Tue, 26 Aug 2025 16:34:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E1FDA8092E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226068;
	bh=KvcoMYHt0cssRxdF51pxKMq8gr3CG1u/8CPh2DQkPZk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DPie+Vy8YkDupxjIk79r9MKSXguzVmZVgh+xFNz4UYNY5dIWujR+tQDJfBIeQ5sPK
	 8BCd7iMYm+OJHgtNHSbqqBZ1P+Wh7vsjdou8XUKuUIPwMaMhqiBI6RJTpBhB/WiNEi
	 uCz5AWV2aH2FDLyTXU5QUFRLQ4SwcFUwgkJA84BXeQX2LXZcZS14Y8aAlB9S+k7j86
	 fGzRiavJ89A/1JVvrV04rD4ErZe1MV0Fn5NF2dls4uVJJzScskrc05etiIXJgalqQA
	 083fIbJLcqG3DWxVRiBht6e5vlBriFarIEzHw8rYSeT3/ewCCYQ0vgm/e+G340aI/T
	 CXsUvHmpcRmDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1FDA8092E;
	Tue, 26 Aug 2025 16:34:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 91E60B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:34:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7800160621
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:34:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6P3GBB6XnnEP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:34:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EA7406062C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA7406062C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA7406062C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:34:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4604D601E9;
 Tue, 26 Aug 2025 16:34:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24BA8C4CEF1;
 Tue, 26 Aug 2025 16:34:21 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:34:20 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163420.GE5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-8-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-8-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226064;
 bh=ofaBMDeT6+BelNyeq885K3p2YoYCdqxJeUKFv0Y2RTw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bFMfG8oFkukUwW/3y/IEzWm1LWmf/+zMpJpBLzo5Zchn2yMfHXJ8T4jnzIkFdUIsF
 uCy0VWrh7biuGY1QmggYKZ2sOWwK7dghN5O9r2ztghjTwEZQ2NSrxWHrzugEppWMmD
 XA5tESiVVNKSXwKETbZtg+MNHQXRqoQq4plo9n+z12/W4NAYpQ1a1mlp0E/cMDyXy5
 3GBkdmwwRYHlaJq+SUE+iqpCEGhbH8yDpWGFcm6glKFe6AUMiCUGzQuoPwuekCyR6L
 PB46+QEZXAmj9rEaHdWXyyTetg4E0sTw+2BOf3pWG35QSTj3+xzOfOhrpKm6zHxPog
 oJYmeDY37/RHQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bFMfG8oF
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 7/8] i40e: add mask to apply
 valid bits for itr_idx
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

On Wed, Aug 13, 2025 at 12:45:17PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> The ITR index (itr_idx) is only 2 bits wide. When constructing the
> register value for QINT_RQCTL, all fields are ORed together. Without
> masking, higher bits from itr_idx may overwrite adjacent fields in the
> register.
> 
> Apply I40E_QINT_RQCTL_ITR_INDX_MASK to ensure only the intended bits are
> set.

I'm all for using FIELD_PREP.
But can this actually occur?

If not, it feels more like a clean-up.
Which could be more universally applied.
And targeted at net-next (without a Fixes tag).

> 
> Fixes: 5c3c48ac6bf5 ("i40e: implement virtual device interface")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

My question about the target-tree aside, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
