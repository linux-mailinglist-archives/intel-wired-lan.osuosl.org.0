Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F47FAFB8B4
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 18:34:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 13FE6614D2;
	Mon,  7 Jul 2025 16:34:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EHQ83jyALZCj; Mon,  7 Jul 2025 16:34:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98241614B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751906062;
	bh=Z13VJCwfKVKWIm94gPBot/PtUkG/aqJ6mTTzY1HoSKU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4hYih2BaiydSVxsQQTTnkdbg9NN90nBWhqq4gVxAhjqfiyppYWaKBlpDugILTgirc
	 LkWR0Npt32reQE9NOtUGCaIzkQaw6Ph6Hds2CV9aer5ZhYJ8q1cvRKOZ2+UBBJvsso
	 7hHJpVZRp4ZO6n54ukMeEs4f0KUNcOa+0ZKiB4wrkdVl10Wk65v1uWNbtA5s2g5B+x
	 Hh7iH8YxIgukLLHVhVdL0p0SClI+VYFEeri10zdsSRMh7i1f716lpjI+3T9/Iqq8TI
	 4RmmY0EPv+q7BoWtdyB1cMtZY9V1FoIlpXlE3j2pH4DV8hz1AKt12vJ58dfyKXHRa/
	 rduCtpvK0DmMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 98241614B8;
	Mon,  7 Jul 2025 16:34:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id BB5881BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 16:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A134260B52
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 16:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2g3TSb6WIOw for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 16:34:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 10C39610DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 10C39610DF
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 10C39610DF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 16:34:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D18B1A54195;
 Mon,  7 Jul 2025 16:34:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EB7CC4CEE3;
 Mon,  7 Jul 2025 16:34:16 +0000 (UTC)
Date: Mon, 7 Jul 2025 17:34:14 +0100
From: Simon Horman <horms@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 andrew@lunn.ch, pmenzel@molgen.mpg.de,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250707163414.GP89747@horms.kernel.org>
References: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250704130624.372651-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1751906057;
 bh=NuUhausAaGQmEIJxOVY/Jkka8pSmXTbqb3674EzUlo0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T4Rvgq4yV9QTLTcL6UUuCQqjFoHK1sOttf98ulWsJtAJILKlZDRxf93Tw/+v5tXPV
 qIc+Cc/BNmPqVoKfPMf+zPeWvwMwDppJ7eqdLeqGL9Sd0Q3Mx009ZjnPCtppCgpy7L
 YlnvcqunMXtrFf/Nxl7pM/ZGBVY5oTm5eqq4JHzuDvziW88unNRfVMLXrMsn5dBxoH
 pLLJARC7VJXO5yh4VpOFlBTKEau1m3iXKPS3fzKhfPu3hk5MSyg7/sq8fQsx4W4cnj
 v/ZDd908Qm9CR6OMgVGgXZZ3v6sXQgTOB1OZ4f0KtWG+aZ9hFkKaITU0Fr1DMuNh06
 p8HiyqKGMvNsw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=T4Rvgq4y
Subject: Re: [Intel-wired-lan] [iwl-next v2] ixgbe: add the 2.5G and 5G
 speeds in auto-negotiation for E610
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

On Fri, Jul 04, 2025 at 03:06:24PM +0200, Piotr Kwapulinski wrote:
> The auto-negotiation limitation for 2.5G and 5G speeds is no longer true
> for X550 successors like E610 adapter. Enable the 2.5G and 5G speeds in
> auto-negotiation for E610 at driver load.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

