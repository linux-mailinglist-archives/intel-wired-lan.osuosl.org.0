Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8749C4CD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Nov 2024 03:53:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6D43E4034C;
	Tue, 12 Nov 2024 02:53:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s5thIeH9fold; Tue, 12 Nov 2024 02:53:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C5A640352
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731380020;
	bh=PfB98CfrcQ70lo22tw/mkultl+gxu5GcaltdOZxoegU=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TytVPDGkywDmQMpte9cyTtG1mQE8zhRB5gZZ2kzbD9BO86djFVd92uAOkC9o7r5jU
	 samoyo7urgkRl44prhYWwQtwMwumIGYFsOHTE8z9nHUW6Kt5PcRG0Cp2thdmiMypxh
	 wUzxnwuysegnsv5qGJW6Q5u6R1/f1yfJxQ728j8Imp1kAzMxJKkzcQ5Bof9JSAGwVW
	 o1ydrJWnt/ed/o61fldJl1gjpfqFOc/Lx2A5LN33xA5DPoejDmK6q8F7hft6cUMRpJ
	 18OSBvdj5Tpqm2cZNjg8y4pawHiWHJ/FXU9qdSeEAzFYfD7DqAmDfcXMsuGNdN736m
	 feWnW+B74W5iA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C5A640352;
	Tue, 12 Nov 2024 02:53:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 20079DB1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:53:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0DB9F6064D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:53:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nlOStTN3fQIJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Nov 2024 02:53:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75F246060D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75F246060D
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75F246060D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Nov 2024 02:53:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 898B8A41580;
 Tue, 12 Nov 2024 02:51:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 431A5C4CECF;
 Tue, 12 Nov 2024 02:53:35 +0000 (UTC)
Date: Mon, 11 Nov 2024 18:53:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, Sudheer
 Mogilappagari <sudheer.mogilappagari@intel.com>
Message-ID: <20241111185334.447a5253@kernel.org>
In-Reply-To: <20241109001206.213581-2-ahmed.zaki@intel.com>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
 <20241109001206.213581-2-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731380015;
 bh=qTAg3KvKVI7n+UA+pnf1KTcD4LcbvrpdtlNHA15/EZQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=s29lKrxo/w8eD/maGOTTh/zEVCgXayilVoCQtOzN9mV3Mfh9qZGG69hDw0XCLI5Nh
 LWTgzA04Ssb8Zx2tV9ilDQOU8pMBN7nhy7v6FU1fL8e8L4bCVObBRaR98LkNg8Qrqf
 38GgwSRubTa3t+6W6+b8QfLYvboG5diirDxdYMZCWR9H8eBMnSspfDu5RkQmmmO8fE
 CHl+YgDPeIknxV8OpDDHjagpBsg29baq8OIoLdUxPfpXRuqWbjVCa2fx1Q8t6cW798
 HggrjMqZCE20ai2iU0yHh0I8hHUAkxnUz6pMBYlQMpHdN5954CG0bjt6aL88FAJAoQ
 HAu/MK98GWhew==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s29lKrxo
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] idpf: preserve IRQ
 affinity settings across resets
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

On Fri,  8 Nov 2024 17:12:05 -0700 Ahmed Zaki wrote:
> From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
> 
> Currently the IRQ affinity settings are getting lost when interface
> goes through a soft reset (due to MTU configuration, changing number
> of queues etc). Use irq_set_affinity_notifier() callbacks to keep
> the IRQ affinity info in sync between driver and kernel.

Could you try doing this in the core? Store the mask in napi_struct 
if it has IRQ associated with it?

Barely any drivers get this right.
