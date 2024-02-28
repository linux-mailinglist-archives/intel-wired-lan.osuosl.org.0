Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1C86A69F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Feb 2024 03:36:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3A0F820CD;
	Wed, 28 Feb 2024 02:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-Iq6ae49OFh; Wed, 28 Feb 2024 02:36:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E8B482000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709087765;
	bh=Ek3LqEIfeG4BDwet58uL83ElhHvr9R1dDhtAMM8b5XM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vmAE9FNG5nO58e1QPPxR9FMIs3jsyYgqOspmTspoeUM85K2TQ0g+Fd06pZV1Xgg/V
	 /wSzVHmyFytiHq1WkEOXuPu4hvYDIN/h243ghqSCdTnmVTCltBLLps5UQhMyK/Kvup
	 DnJnNb7zHFYKiQoJ7J1pHE2uxUYMf1uOzO5u5gvJG82LEKullnCzdti40Yl4Mcht//
	 E2HFCUR1hU8fth/ZypoOkLb35NqPRv4XJbi55l0p50iNRg0OOPxvzH6uANSEWS5SBa
	 DYRY8BnPVS0EC5gAX41eqoA2qJTExwMQ6OiOC2oTBfQi6HSIUhFPQS1/yea6IKmc3O
	 xIU0KjjnkHzbw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E8B482000;
	Wed, 28 Feb 2024 02:36:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 334701BF314
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 02:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F7D7608C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 02:36:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8KSXkeKaRTuq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Feb 2024 02:36:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A02D660790
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A02D660790
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A02D660790
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Feb 2024 02:36:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 1F307CE1F7C;
 Wed, 28 Feb 2024 02:35:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0213CC433F1;
 Wed, 28 Feb 2024 02:35:55 +0000 (UTC)
Date: Tue, 27 Feb 2024 18:35:55 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <20240227183555.01123eb7@kernel.org>
In-Reply-To: <20240226151125.45391-2-mschmidt@redhat.com>
References: <20240226151125.45391-1-mschmidt@redhat.com>
 <20240226151125.45391-2-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709087756;
 bh=55xwUWFspAVlGcKw+GAnaKAavDfKol9w4CrzXxRxf4c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ai6GEFp1xYU8vcxMOLc319xHH1ub41Nj1RMCJG1hTYBZo9NLTjM/4/jBAiRiQ0NGz
 HhzG3AMcl694LkiaRMFxs0n0aBYyrUk3Ojo29w0PoECD+lQRfMeu7ZDiLEvnHyqD3C
 5K3R1a64PKoeRwoRoBAE4NupRQ26mu+xJWSOWwY7WxHvJf329rGlvHgQ1I73iWI5o9
 v5MjPu+uKdFdECjDhNKfjkABzH92O4P0B4MWfm8t0L5sbql2q+zE/L7pT06y3HYSkk
 pNOLG5aVnc9uYlAsRN0pmPamcsPPXXS1j5EjSYRvUq+u1+13jL6dOjvCw3//BuhjZ3
 ZVDPf0tAcGj4w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ai6GEFp1
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] ice: add ice_adapter for
 shared data across PFs on the same NIC
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
Cc: netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 26 Feb 2024 16:11:23 +0100 Michal Schmidt wrote:
> There is a need for synchronization between ice PFs on the same physical
> adapter.
> 
> Add a "struct ice_adapter" for holding data shared between PFs of the
> same multifunction PCI device. The struct is refcounted - each ice_pf
> holds a reference to it.
> 
> Its first use will be for PTP. I expect it will be useful also to
> improve the ugliness that is ice_prot_id_tbl.

ice doesn't support any multi-host devices?
