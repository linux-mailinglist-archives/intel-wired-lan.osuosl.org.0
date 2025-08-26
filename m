Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E46B37094
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:36:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A026E6069B;
	Tue, 26 Aug 2025 16:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RwXdhq3aM2_p; Tue, 26 Aug 2025 16:36:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E5376068B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756226203;
	bh=JfFuxNiIIKAEK0CcCubP6D4SrG9ptIHEF64qVTyBE7E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Z1alkcSYcqnYKp0WYur6FoA4qv/KGrP238uwONBjgZyNEAugf2UYnOR+TNbM4+W5v
	 MDL4CLrjVC6FUTKAmudsv9DDP53Eby8FTRPsFyMIX72gfQvct74EOUBG92SELFx3I9
	 BusYScfUayc4FWQUjz+RuNLL5vVgnf7JhMGFTDLQvm1bMqachV7bd+oeJP3UTNw9cH
	 ecmSU9B/FuYhAXXgfSiiGFz2d/uejUM7OKM6fprelvO8JDdHOtn6LQvL5DXvJhFPzJ
	 Em74B9QWPjq3pl7UbZ3wpdO+fIefhk+zIK+0cSOTRqzwFRP1gSRqEgDpRf0LnGc0il
	 UF5eJB2Q+gvEQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2E5376068B;
	Tue, 26 Aug 2025 16:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CF0DCB0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B606940062
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fDyqTOCQQ1py for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:36:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 369F240080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 369F240080
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 369F240080
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:36:41 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E7C8D4443E;
 Tue, 26 Aug 2025 16:36:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98DC1C4CEF1;
 Tue, 26 Aug 2025 16:36:37 +0000 (UTC)
Date: Tue, 26 Aug 2025 17:36:35 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Greg KH <gregkh@linuxfoundation.org>, jeremiah.kyle@intel.com,
 leszek.pepiak@intel.com, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250826163635.GK5892@horms.kernel.org>
References: <20250813104552.61027-1-przemyslaw.kitszel@intel.com>
 <20250813104552.61027-7-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813104552.61027-7-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756226199;
 bh=LD542g5aiwUB0UK0QgBaqLiP9350DrYBzkUTF6bDdlg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uVJjpofzUGjmjxQKqXMqEJQs68iKKt8pZzzfjHzk3uHFhThcIuYUtiIp6g0+IQNBs
 capYwf0wUVaA+u36/8g291bAv3vkKMWX+Q4+RiifdzHVqURFn4Raioh6pHlpC9Z1xO
 av/T7+JUuX8aMdUGxNLT6Petd8t5cEMPvT/Mpqc4pvX+Cuhl6tWvyJRNDLu434DHk/
 IBMgJFAAfDuJMwiCxsbV+EF3FSysoGrbrB64rBiAjl1QcJ+R5bTu5GEi6Yc03U3m0h
 6fZQevaujD4mdgVZoNKlioIg/SqR4Q7jjWc+cNNvNoxUWAinM59YV7m2c2GM790eYM
 vwMZneUo5B9uw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=uVJjpofz
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 6/8] i40e: add max boundary
 check for VF filters
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

On Wed, Aug 13, 2025 at 12:45:16PM +0200, Przemek Kitszel wrote:
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
> 
> There is no check for max filters that VF can request. Add it.
> 
> Fixes: e284fc280473 ("i40e: Add and delete cloud filter")
> Cc: stable@vger.kernel.org
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

