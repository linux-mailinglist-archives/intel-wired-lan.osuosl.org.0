Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A73A1DB80
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jan 2025 18:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5605980C43;
	Mon, 27 Jan 2025 17:42:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJQGa--zWDk7; Mon, 27 Jan 2025 17:42:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA24F80BB5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737999772;
	bh=+GaeAUSMWZ4A3X5PbuQRiRWRpQk3A6nipAojdcxufRU=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=e2kB1g98brWcRiKj5Vj+zcrrsH4xyOSHZlXnLniqZWQj0J2b0snC9TzxsX1rnDNMA
	 rtITUt7is08Ak3HMs2Hj3LblPCyNqJ0ANHT8SeNdr2Qlaw75mwc0OIuT95CqG5rMAM
	 11FvUw02iXCyjnQHTZ/HEKykIOs/ahVzOm3a1vYhr8CORNz4jR3kIcBkNR/YSVmdK/
	 0P7vgXTUM9IUG3U9dW3KFWKZu6ucPmLmKtJRFd9J8AqOlu7QFIjokO6e1QjbdcvNFC
	 Ej7eC1YYmXku216Ydh/tg6Ska34Dx+x7T4PhwoUrK8q5/emSQ+Y4dc4XSe5DpHHPy0
	 MudSPJ3U2VXJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA24F80BB5;
	Mon, 27 Jan 2025 17:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7FB60AF7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 17:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6178A80B60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 17:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAJ18myXhgqh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jan 2025 17:42:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4DA180B40
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4DA180B40
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4DA180B40
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jan 2025 17:42:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 84D3C5C049F;
 Mon, 27 Jan 2025 17:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FC78C4CED2;
 Mon, 27 Jan 2025 17:42:48 +0000 (UTC)
Date: Mon, 27 Jan 2025 09:42:47 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20250127094247.40b169a1@kernel.org>
In-Reply-To: <95288bb1-8931-4d18-b8f6-25a4f6148afe@intel.com>
References: <20241105184859.741473-1-tarun.k.singh@intel.com>
 <MW4PR11MB5911F6BAECF5DAC79199B362BAEC2@MW4PR11MB5911.namprd11.prod.outlook.com>
 <95288bb1-8931-4d18-b8f6-25a4f6148afe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737999768;
 bh=+GaeAUSMWZ4A3X5PbuQRiRWRpQk3A6nipAojdcxufRU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oFX358efwc3DfsvWJbikh7ppR1u7iZRGB6Zru4GWJlTtv77C9Ul4Jt2J74YXOfPQf
 ncoJ7EJNbE0X/fHViuJlkLmUB2NluvFFwysVTjVeIXrU4Qsu66MOCeXDDH8JTSZto1
 7LikANewMHFw/HTSyhkRbUFR7Gu3vUH5tCYzS9+pzbFHKTk4bXRcPzg3k/TeTHlVf0
 Msp+6vlyCr6HD4DW3zmHIKoBEJ0UNJ5CF+CqEXMZ7D3UQq3Dfh+Gg/igwlwquPaCgy
 WdC47emUXm6K1It8ccEB4vvRf8+D2LKZfu7II1sCTm0V94b/CrFCGO0Y50SuOaEYBl
 qGQ2GRWPfJuXQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oFX358ef
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 0/4] fix locking issue
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
Cc: Ahmed Zaki <ahmed.zaki@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Emil Tantilov <emil.s.tantilov@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 27 Jan 2025 09:11:41 +0100 Przemek Kitszel wrote:
> @netdev
> I would like to consider adding "in reset" state for the netdev,
> to prevent such behavior in more civilized way though.

Can you provide more context? We already have netif_device_detach()
