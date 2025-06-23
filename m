Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD4DAE4C18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jun 2025 19:45:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8EC02811EA;
	Mon, 23 Jun 2025 17:45:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FfkEsmPu3iQc; Mon, 23 Jun 2025 17:45:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 97C9D811F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750700733;
	bh=z+mTHekPicguApDc91NjslffEi7PoMbr2YzcPmjuxA8=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ON/OK38qGSdJsg0Wtr1Nz+WTVKPK5ZElETj9vWhYL7BVfc+Sb2Mp0xz6KBC5lEnTi
	 KPqKMayMV96KjlbnLORI6TSysx0GosbGIxNyonuLMUeqIPuLSn879TUOaguO/vDn/I
	 fNpAIayySGXNyHRVtrzCT+I4AyLb4IEZVFowR1On2+7ZI4ur7pHMdALBne9Xce7wDF
	 pishCFJNTmirILuiSX5EmH1DxBE27yW+wPlF1eQJYgzn7/HBPJUgLl7bX0hReqpAFo
	 ynvg62qpP/OI1Fb6yqm71fJIxGtiJGoAQ5f18EoEudsJqy6oSBS6nTWw9/dfx8Llxk
	 N6Q/YUftgUvoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97C9D811F8;
	Mon, 23 Jun 2025 17:45:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F39D612C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 17:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F07B040663
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 17:45:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lumHowZYNSBk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jun 2025 17:45:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 30075405B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30075405B7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30075405B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 17:45:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6730D5C5E1A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jun 2025 17:43:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D49EC4CEEA;
 Mon, 23 Jun 2025 17:45:29 +0000 (UTC)
Date: Mon, 23 Jun 2025 10:45:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org, netdev-driver-reviewers@vger.kernel.org
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <20250623104528.74ce41da@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750700729;
 bh=z+mTHekPicguApDc91NjslffEi7PoMbr2YzcPmjuxA8=;
 h=Date:From:To:Cc:Subject:From;
 b=MsIaowWc5mfT8EzmdTiyIcuqDxMf4f9UUiX9+sTPPpy0rmBl6rF5vHZyEztGPIqYE
 ngSG3hrgz6za4M/iOYnMhSWHpKGH+Dn+9D2NtvTq/XX/lFIygzH4Ec4LqXoDgD0RUy
 jWxPmHipZ5A0Rqrep0fHxNHobfQaI6HwsqPaEV7+yrnckx1eix6jIUlA0WMNDGqTNp
 8JvYgUyH2RiDMdAFl/s9OY9VetThsa/2ydKqTHVGb6JPQbRb66bke6I+cykytxpgKx
 Ho8gX4ls2fJOkn5hVU93uhYdF+Zt3Xg0A3xJanTNaizN1UE9FngTsrTDJt8Wysb3pe
 o/ZQW+gcJmPOw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=MsIaowWc
Subject: [Intel-wired-lan] [ANN] development stats for time periods
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

Hi!

The first half of 2025 is coming to a close and I suspect some
companies are working through employee performance reviews.

Our development stats are are bit awkward to use for performance
reviews because release cycles don't align with 6mo or 12mo windows.
I added a cron job to generate the development stats each weekend
for the last X months:
https://netdev.bots.linux.dev/static/nipa/stats-1mo/
https://netdev.bots.linux.dev/static/nipa/stats-3mo/
https://netdev.bots.linux.dev/static/nipa/stats-6mo/
https://netdev.bots.linux.dev/static/nipa/stats-12mo/
This should hopefully make it easier to claim credit for upstream work.

HTH
