Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDF76B9F80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Mar 2023 20:19:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 595A360D76;
	Tue, 14 Mar 2023 19:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 595A360D76
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678821595;
	bh=gqU7jMyHwwC6tWCndb9xE8BjeK1zJdAfoPUgkpEZUjI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D/2OZm7hyyplQk3BkGs9W44g6ijVyBe3Dyu10v8L4ImiRYf9KNxV0vt2jJWTr5+oM
	 WtZT/JHBBbfwj0vZjD2EFi6sk4dNvYozeGYv7YaldrSRAShO4YGaH31yWqd17cAKSj
	 6XnGyf0xg2xZ1sNJeG5HRkvs3IhBQ6uzr1LXSehtkl8zb5OXNcuZTLgfHL/5Tzn6WM
	 3ApyKrxfcCkzfUs6ncHMLF0oNKeoz0CeABNxNZ+67Hph/ZkBLh9e2H8MZmYd0eMEJT
	 wVLC8i/4xI+I/lLCQt2C4n+yv2nRdqtUnP18vbRGLXJqQ1ljoE1lU3ZbXMy56gkKbx
	 E97cInykDerKA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vYbqrfEgslHJ; Tue, 14 Mar 2023 19:19:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 17E2460B88;
	Tue, 14 Mar 2023 19:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17E2460B88
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 230DE1BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 19:19:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EF34440328
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 19:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF34440328
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JeFhfL4wOMWp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Mar 2023 19:19:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFF144011D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFF144011D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Mar 2023 19:19:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="400103543"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="400103543"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 12:19:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711633247"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="711633247"
Received: from ktpate-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.212.171.228])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 12:19:38 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>
In-Reply-To: <20230313095648.czf4so6qpkcotqq4@pengutronix.de>
References: <20230228054534.1093483-1-vinicius.gomes@intel.com>
 <20230228054534.1093483-2-vinicius.gomes@intel.com>
 <20230313095648.czf4so6qpkcotqq4@pengutronix.de>
Date: Tue, 14 Mar 2023 12:19:38 -0700
Message-ID: <875yb3i1it.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678821587; x=1710357587;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GWUsmUajL5jOHval1J6ppe6EK9fbnQlJmNBgES93TXY=;
 b=Qap39RsEox20MVKMMc5DqwGrr6JHsO4edO7IVFOhnv6XzFuB8IVWZwg/
 NB9xxaebLVaozAKWT63asWsyKfbigBFJjI/hkdWMOQ67YKKaji/kAFhwX
 ZYjlBanN/IS1NBSBtPwsakaRvDeCNkebSNyOlVc7n5unWUtLiaX77I/Yq
 s3jWpy/BWMMbtqsfbts8KSNG7w1nqdDIRgyeSyIpr/LCIzCkAFeAtbGr5
 n/Js99WqyqLVBtorsZioFEXuDunyxJCalT/O/vJJZ+X/BIWPG2YtynYWm
 UiWBu7kLkTT7W4RlmNvLbG54z8IVf9xPKRbSbDkLxxdMbhGsqoBDOlcHU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qap39RsE
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/3] igc: Fix race
 condition in PTP tx code
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
Cc: Andre Guedes <andre.guedes@intel.com>, vladimir.oltean@nxp.com,
 kurt@linutronix.de, anthony.l.nguyen@intel.com, kernel@pengutronix.de,
 intel-wired-lan@lists.osuosl.org, jzi@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Marc Kleine-Budde <mkl@pengutronix.de> writes:

> On 27.02.2023 21:45:32, Vinicius Costa Gomes wrote:
>> From: Andre Guedes <andre.guedes@intel.com>
>> 
>> Currently, the igc driver supports timestamping only one tx packet at a
>> time. During the transmission flow, the skb that requires hardware
>> timestamping is saved in adapter->ptp_tx_skb. Once hardware has the
>> timestamp, an interrupt is delivered, and adapter->ptp_tx_work is
>> scheduled. In igc_ptp_tx_work(), we read the timestamp register, update
>> adapter->ptp_tx_skb, and notify the network stack.
>> 
>> While the thread executing the transmission flow (the user process
>> running in kernel mode) and the thread executing ptp_tx_work don't
>> access adapter->ptp_tx_skb concurrently, there are two other places
>> where adapter->ptp_tx_skb is accessed: igc_ptp_tx_hang() and
>> igc_ptp_suspend().
>> 
>> igc_ptp_tx_hang() is executed by the adapter->watchdog_task worker
>> thread which runs periodically so it is possible we have two threads
>> accessing ptp_tx_skb at the same time. Consider the following scenario:
>> right after __IGC_PTP_TX_IN_PROGRESS is set in igc_xmit_frame_ring(),
>> igc_ptp_tx_hang() is executed. Since adapter->ptp_tx_start hasn't been
>> written yet, this is considered a timeout and adapter->ptp_tx_skb is
>> cleaned up.
>> 
>> This patch fixes the issue described above by adding the ptp_tx_lock to
>> protect access to ptp_tx_skb and ptp_tx_start fields from igc_adapter.
>> Since igc_xmit_frame_ring() called in atomic context by the networking
>> stack, ptp_tx_lock is defined as a spinlock.
>> 
>> With the introduction of the ptp_tx_lock, the __IGC_PTP_TX_IN_PROGRESS
>> flag doesn't provide much of a use anymore so this patch gets rid of it.
>
> Since the igc PTP code is derived from igb, do we need this patch to be
> ported to the igb driver, too?

Yes, that would be good. Will add this to my todo, but I will be glad if
anyone beats me to it.

>
> regards,
> Marc
>
> -- 
> Pengutronix e.K.                 | Marc Kleine-Budde           |
> Embedded Linux                   | https://www.pengutronix.de  |
> Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-5555 |


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
