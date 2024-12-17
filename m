Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A69F9F4048
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Dec 2024 02:56:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED2F981F99;
	Tue, 17 Dec 2024 01:56:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CNF5e66GBUTl; Tue, 17 Dec 2024 01:56:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30E8F820A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734400580;
	bh=FXMO7Uj1C5WXZnstscdNw9Bhcp+a3TuCpRDpokLq4Sw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CweYjHgBaYGtWwCrP8Yoxej8wmlkojMISnNA8HDZEMrA6D3bWipYewCnomc6GwR8T
	 IEe5XZKIo6pzJnkU5o4qEN/yh29YvyTQw4A3HyrxLkmQSMbR67ui4S7q9Kq60WPIEP
	 Aj+WKXJv53A2VxDxBxuk0X/b1JWmfAWALvwUxPOyy9E1RR7gyXyGCd//aC/GWlYFB5
	 S00VkAyI0oD27oaRkD+MZyH1aM99IPXiEHtQmF83L9Ax8oMbvTc2/lLfD3Xw7lCtXA
	 hZGXtHQHN1u5EnF8o46/zP0LfFGCcCjcfw8ImFQQZ+xCh2qoR0R5bw6bxfcRG6Z676
	 quERVuvcCBdaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30E8F820A2;
	Tue, 17 Dec 2024 01:56:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1351ECE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0107760F74
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:56:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jgx1cKvA-C0g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Dec 2024 01:56:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5D80D607A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D80D607A0
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5D80D607A0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Dec 2024 01:56:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 19D09A41BB2;
 Tue, 17 Dec 2024 01:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5ADB8C4CED0;
 Tue, 17 Dec 2024 01:56:14 +0000 (UTC)
Date: Mon, 16 Dec 2024 17:56:13 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Alice Michael
 <alice.michael@intel.com>, Eric Joyner <eric.joyner@intel.com>
Message-ID: <20241216175613.3b9780fa@kernel.org>
In-Reply-To: <20241216173212.1157855-1-paul.greenwalt@intel.com>
References: <20241216173212.1157855-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734400575;
 bh=FXMO7Uj1C5WXZnstscdNw9Bhcp+a3TuCpRDpokLq4Sw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aLkFDYPaqieluQkYbTq3b2g72saYHQvJNCfds8G6lrxJIHadaK2+h9gRZp1eicGJz
 UPsvSCjsLq8jJuBp0CXsZEnBKuvpZDaZsqVwJOs5xr4zJw9gx/lZp6iflhcLSmonB/
 LHnP9A/FTYhdxsVDPsIBfLSNTG/yN/n5XV1TRt2X8wb1vZR6AmW8dcMfWpwLIxHINP
 IrF/0XmZpzklO6YoBwaWaMBTY6qdKgEAboGvB3D6y9DgFafljNvPbTHwne305nNHuk
 btylqmNeCg8Okk0a3oyFwBjGUcCPleBFFLNfsDUAf4YcXBPub6UNNzUufTBSgVmpUl
 0Po1f3CZKg5Ew==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aLkFDYPa
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5] ice: Add E830 checksum
 offload support
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

On Mon, 16 Dec 2024 12:32:12 -0500 Paul Greenwalt wrote:
> Cc: kuba@kernel.org

Please don't CC me on iwl-next patches unless you also cc netdev@.
Makes the patches got into the wrong inbox..
