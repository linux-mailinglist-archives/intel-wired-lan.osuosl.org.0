Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B5F7E101D
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Nov 2023 16:36:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDBC641E41;
	Sat,  4 Nov 2023 15:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDBC641E41
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699112209;
	bh=6WYyugLAZ0psjwwjXkqfFKg2Po/3Vay71EEPHkFyijA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9BHLPbclSdzEOMBKUwdY1MgNqKlERYLSx6tIm98G2iVn1SCNj1wbH4jvcJY1c4lcR
	 IYsFrg6MW7dFkfw27yqEphyrlOAuimKgvuuVCPgbtULDF5U3EvqvLFvbcOWSqDFM3N
	 XZS//tofsxdbCQSa+Xk8gHO64mIOwmmunbdUOkwj0JFqT7etX7ae4HPqphZNNyjt+1
	 KbfMileaUUTNG9qU3F4DGJ+X9BjtlCWczy4bAvD1YF1n/oNB7d747Z7FMHcPQ/iJK8
	 7GJzAvAjRwYDoZqVEaX1ha2FjifYbkMxbVdYFyQcL0kT2GmTPCt6vUUVJhZK1N3FUY
	 vj6s5yDqfIZbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYd0ZihsvNEN; Sat,  4 Nov 2023 15:36:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CBC441DD1;
	Sat,  4 Nov 2023 15:36:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CBC441DD1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17C051BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E332360F47
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E332360F47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ewn7igxCK_S0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Nov 2023 15:36:40 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F308B60F44
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Nov 2023 15:36:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F308B60F44
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 13C39CE01BA;
 Sat,  4 Nov 2023 15:36:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ABEE9C433C8;
 Sat,  4 Nov 2023 15:36:28 +0000 (UTC)
Date: Sat, 4 Nov 2023 11:36:17 -0400
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20231104153617.GK891380@kernel.org>
References: <20231103162943.485467-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231103162943.485467-1-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1699112197;
 bh=vafSQTQ5kXKyz/SHRy5gVLc2MmSNeUAQAiolRcAYYaI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hOIwzmZMSGkTaLl4Ih31a2Q3XsXTeyKtQqcxLwKL4lNDs+oRYQRkuwYp0Nc9MYrOq
 gi2iiKNn3yhlrZN+IMKdk2V3OtTWXIa0iwN81TNNlAu2+tsVZ60sORX0EbyUjtn+3P
 COycA5cNkMAKB3scLRBbiZZ7mdT4FrxRxmeN+N75rK/SykBE6DVBKurNNh0dOHPo28
 jFQ9SqE2qs2VZMTFU6KZkmiUmZuRtsTm5NUkVBxuHEBt1kkuiX90P9yl0VbRv/Ys5Z
 SM75E2yxn7JMDQu9vsCPLXqTvi1DhvA5zfqVy1ORwulBzjJTPQz/fZ7vlVddt54SOB
 I9++h5DTc5hCw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hOIwzmZM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: periodically kick Tx
 timestamp interrupt
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
Cc: netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 Andrii Staikov <andrii.staikov@intel.com>, anthony.l.nguyen@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Nov 03, 2023 at 05:29:43PM +0100, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The E822 hardware for Tx timestamping keeps track of how many
> outstanding timestamps are still in the PHY memory block. It will not
> generate a new interrupt to the MAC until all of the timestamps in the
> region have been read.
> 
> If somehow all the available data is not read, but the driver has exited
> its interrupt routine already, the PHY will not generate a new interrupt
> even if new timestamp data is captured. Because no interrupt is
> generated, the driver never processes the timestamp data. This state
> results in a permanent failure for all future Tx timestamps.
> 
> It is not clear how the driver and hardware could enter this state.
> However, if it does, there is currently no recovery mechanism.
> 
> Add a recovery mechanism via the periodic PTP work thread which invokes
> ice_ptp_periodic_work(). Introduce a new check,
> ice_ptp_maybe_trigger_tx_interrupt() which checks the PHY timestamp
> ready bitmask. If any bits are set, trigger a software interrupt by
> writing to PFINT_OICR.
> 
> Once triggered, the main timestamp processing thread will read through
> the PHY data and clear the outstanding timestamp data. Once cleared, new
> data should trigger interrupts as expected.
> 
> This should allow recovery from such a state rather than leaving the
> device in a state where we cannot process Tx timestamps.
> 
> It is possible that this function checks for timestamp data
> simultaneously with the interrupt, and it might trigger additional
> unnecessary interrupts. This will cause a small amount of additional
> processing.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
