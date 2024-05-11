Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2828C329F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 May 2024 18:57:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C258742468;
	Sat, 11 May 2024 16:57:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kou7ksE9KZsI; Sat, 11 May 2024 16:57:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF9464246D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715446667;
	bh=FwKZVyUTmbTjh+pDQevQ1PjtkA94omSawEdEZv4gTz4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R4fayEdB35FFkAgMn5aIyKy+xjWpfSbIScbo49trmsuPHq1+SKzY5pE/VTCZH4bff
	 Isj4sPJYKdwYit18Bkn893P+WK+bRk25uSj1isBF5YDGMi38NK16XjTm8KQIFE7CbM
	 hW7dDk9bGGRzYPzZDY9WE3n22x+fs1K/N2a0Hyps9Yenn6F2QEKNvTYWfJbLp436/G
	 ihJjfHE9S5HmHkdDH5TtV9DvdKied+8Yje7TUTM6tscv4dAL7AEYtJAitYU1jN+6vP
	 1xNv47j3sQwAjJ1OaeJLCAKcS4LNNzSz3wAnM6NOi4rEStYJxegzRVS9nVHiCxQ9zK
	 RGDdTOlQ3mADw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF9464246D;
	Sat, 11 May 2024 16:57:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EFD871BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E909060841
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:57:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CP_buVjM5Zja for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 May 2024 16:57:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 432C760839
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 432C760839
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 432C760839
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 May 2024 16:57:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 39316CE04AE;
 Sat, 11 May 2024 16:57:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A400C2BBFC;
 Sat, 11 May 2024 16:57:38 +0000 (UTC)
Date: Sat, 11 May 2024 17:57:35 +0100
From: Simon Horman <horms@kernel.org>
To: Anil Samal <anil.samal@intel.com>
Message-ID: <20240511165735.GQ2347895@kernel.org>
References: <20240510065243.906877-1-anil.samal@intel.com>
 <20240510065243.906877-2-anil.samal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240510065243.906877-2-anil.samal@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715446660;
 bh=3p5nlUzEMoiqoU0Mt3ee/Sib4kleFAGWsYahQzTm58w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mhypjOKWHAoS02KiabCCFkd7vxJwf73D3xeRVylnNWN02MGM5iSoZr4ABdanFrTuh
 hrlCAda8lFQ8RostgF4GV5kD1dj9eXm1bY1Mq9TyIXjKTsW9ZXvQQHTLY1VrlKmXA0
 ojWzpZJEu7eYiMSFosvrZWG1V5XWqrQqmT/BtMAbfR3jzV2VKEtIbg6GD5eYLRBdEG
 Ql8aG4AbQIA0eQr5u2sVXrDjksPbQmmo45EA9ZdwKMM5Iv0sBd2YF/roJUtTtD9s9D
 t8ErLSRtGku0A99oYOVRjm9nqW/T/Fm+OVxLZZdbbZPZABu10V0L/OL3ydjWvPlq2t
 vzxEb6f2en++Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=mhypjOKW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/3] ice: Extend Sideband
 Queue command to support dynamic flag
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
Cc: netdev@vger.kernel.org, lukasz.czapnik@intel.com, leszek.pepiak@intel.com,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

[ Fixed CC list by dropping '--cc=' from start of addresses. ]

On Thu, May 09, 2024 at 11:50:40PM -0700, Anil Samal wrote:
> Current driver implementation for Sideband Queue supports a
> fixed flag (ICE_AQ_FLAG_RD). To retrieve FEC statistics from
> firmware, Sideband Queue command is used with a different flag.
> 
> Extend API for Sideband Queue command to use 'flag' as input
> argument.
> 
> Reviewed-by: Anthony L Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Anil Samal <anil.samal@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

