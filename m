Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC0CA8A85C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 21:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDBD780C5C;
	Tue, 15 Apr 2025 19:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RDhjBbkaLZCE; Tue, 15 Apr 2025 19:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11E7380DF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744746411;
	bh=XcSAipvOk7QdqHottTE0QAFIpuVevSHr/OJdHlNnGdE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8uP8D6OoNCdJRHvclJ3ZDZFbGaShpLjJVxijL6c6jHwzNFgqaX6Ka7rHoh61nYu/v
	 HgZLz3Mcg35I9OmMjL83DuaYfxcG0NOy/t39/35jQY3JP7cOJLpMD6nGG36CPo6znN
	 AqP+O5iI4ckA9T+QQkYxX76zD22UKz6x1qY1YyZmkKcfieYjqNgL23dZsVaET/E7Rw
	 6nlXp8kSosOKrHfT/i0nGs6pTrOUIWLVOw4H8eJRLRrSvc9oD/yXg7X87D0c2pNuWH
	 2pK88Y5cdYj+/IrArt/vxw2CtAGWpEaqVr/8ASmaJysSujV8hG2umUT0I39w0CB7z8
	 z2Yg72qzfyu6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11E7380DF3;
	Tue, 15 Apr 2025 19:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 83083109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 19:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E97441802
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 19:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duZJHqq4CujB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 19:46:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC07340187
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC07340187
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC07340187
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 19:46:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AC0A35C5958;
 Tue, 15 Apr 2025 19:44:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5EFAC4CEE7;
 Tue, 15 Apr 2025 19:46:44 +0000 (UTC)
Date: Tue, 15 Apr 2025 20:46:42 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250415194642.GH395307@horms.kernel.org>
References: <20250414131241.122855-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414131241.122855-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744746407;
 bh=Lehm73pFOv1XPw6aNSbvciO5SUYCc++FebrjAsZmbgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W0REqlYLPqmDBuCvzojlLQA7o2kllp4dWQcXkMlA3Omr171j/D1LlZGIFCjCNDwws
 izVDF07qNNR6eCtksuVPYOBQlGTCrNt7Jf8Sds4Ct4+yawqfT5pEhDaQQWca4DnqN4
 I5haM9kxGzxcJSPzkQDgakt1dmsC4gPPzIdXrPgHthsCZdARsJG2y/aVuQcUNi+3V6
 Bl79QH3Q8/jShegTO2NNyWSi1WqXu/u/4KJ7VGiq4Qj7c9v7Ydyrff4/LMhtUsgCuH
 uVyBJoQkOq8zAOJ4YdaYldDYMi2vl7BdYUPA6npfttdz274Nfppj9BA3uag8C7QLTV
 4ySVAhLl+2OUg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=W0REqlYL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 14, 2025 at 03:12:41PM +0200, Przemek Kitszel wrote:
> Use Device Serial Number instead of PCI bus/device/function for
> the index of struct ice_adapter.
> 
> Functions on the same physical device should point to the very same
> ice_adapter instance, but with two PFs, when at least one of them is
> PCI-e passed-through to a VM, it is no longer the case - PFs will get
> seemingly random PCI BDF values, and thus indices, what finally leds to
> each of them being on their own instance of ice_adapter. That causes them
> to don't attempt any synchronization of the PTP HW clock usage, or any
> other future resources.
> 
> DSN works nicely in place of the index, as it is "immutable" in terms of
> virtualization.
> 
> Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on the same NIC")
> Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> CC: Karol Kolacinski <karol.kolacinski@intel.com>
> CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
> CC: Michal Schmidt <mschmidt@redhat.com>
> CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> CC: Michal Kubiak <michal.kubiak@intel.com>
> CC: Simon Horman <horms@kernel.org>
> 
> v4:
>  - Add fixes tag for real... (Simon)
>  - extend commit message (Simon)
>  - pass dsn to ice_adapter_new() to have simpler code
>    (I happened to do that as (local) followup) (me)

Thanks for the updates.

Reviewed-by: Simon Horman <horms@kernel.org>

