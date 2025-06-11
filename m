Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C324EAD640F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 01:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C70F60A81;
	Wed, 11 Jun 2025 23:54:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QdWTLHc7ZY8E; Wed, 11 Jun 2025 23:54:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06FB960755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749686060;
	bh=9RBoQGXVToQPIzS2tvyGTjgUAGyZTcLHYtuDQiTqx08=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nsU8cuUy7m2QY1zJdH6ZY+PDBP4zUgGvSDaW273LMb/lWJjIPdMByN6xlRZsXzhDs
	 4QDO5AtkUp8aDafXr99kE9Rj79JsGfiv1c78xGsVxOT7OrgJT3IR8f6qLL6niYcwE3
	 sKwAS2psSIcqJcIA5+LdCB+heWf2I2xvD3TIXRerf3Upuux+7QIE7NoCQvmRz0HLwh
	 kEu/snlvfkr3ZKg3j6jIMldfMsN2HbOeIQPltfDLhPYHpmSd0OwfKY7LJ7oVsNo9Pu
	 Bqx3Vc0mVSeXfhPtE8wgAsZhVPn+r8Yx+fLCvJmjviTZWXY0IGL81T2XoD6oyeGDDW
	 0qssCyKQvtQAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06FB960755;
	Wed, 11 Jun 2025 23:54:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D20DA183
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AF37640284
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:54:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id f2Le2NGqoOy2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jun 2025 23:54:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 259B940398
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 259B940398
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 259B940398
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jun 2025 23:54:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 2D1F35C385A;
 Wed, 11 Jun 2025 23:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4094C4CEE3;
 Wed, 11 Jun 2025 23:54:15 +0000 (UTC)
Date: Wed, 11 Jun 2025 16:54:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, vadim.fedorenko@linux.dev,
 jiri@resnulli.us, anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com, corbet@lwn.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>, Jiri
 Pirko <jiri@nvidia.com>
Message-ID: <20250611165415.3c9ed314@kernel.org>
In-Reply-To: <20250610040436.1669826-2-arkadiusz.kubalewski@intel.com>
References: <20250610040436.1669826-1-arkadiusz.kubalewski@intel.com>
 <20250610040436.1669826-2-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749686056;
 bh=26gfdBmSWheCaqCXB++m2kn/LihOibkm/qsTpeORxfA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rh6rYxliD9fzaxoXSHa2EInXnh2859WCJCuJ0LBSovBptDG6/HuiMz66Q+NV0u8PX
 iZ7sDYXGP7w1T1cjNEa8OfhvJsplsoH6AnjVEZ/5XrfGC1lWfJyA0PKPlQNafyCoFp
 TDw6SAx5Tx+/EHnovqZBy3zEPWvfsJ6p/8ycIakZRUXzgV0bd0Uuumh9eNfuI2Ja3d
 sjCcB/urTdfteIpcD8BZ/TzLzhFIZT5BzvDzY0W92UAuZ8pkfQ1VGd+pyjwdueLLYc
 8thuFIOB6FFaTtAKMh1ujh1fqtkGpm0/JyU6o3z6RFqaDe2K32r9ONONULUZ63rPnN
 Xs2/PLxwv8qwQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=rh6rYxli
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 1/3] dpll: add
 reference-sync netlink attribute
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

On Tue, 10 Jun 2025 06:04:34 +0200 Arkadiusz Kubalewski wrote:
> +The device may support the Reference SYNC feature, which allows the combination
> +of two inputs into a input pair. In this configuration, clock signals
> +from both inputs are used to synchronize the dpll device. The higher frequency
                                                ^^^^
                                                DPLL ?

> +signal is utilized for the loop bandwidth of the DPLL, while the lower frequency
> +signal is used to syntonize the output signal of the DPLL device. This feature
> +enables the provision of a high-quality loop bandwidth signal from an external
> +source.

Looks like there is a conflict between this series and patches sent
by Tony the day before. You'll have to rebase.
-- 
pw-bot: cr
