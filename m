Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 268F1B3AD8A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Aug 2025 00:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C62A2412C1;
	Thu, 28 Aug 2025 22:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YUqG829AkOjV; Thu, 28 Aug 2025 22:32:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 498BD41214
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756420324;
	bh=F7A4MWxQSm9GPTsYP+rlxbmrqst3/1nPKdk9hDiLWoI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J2wmmEt/c0Ajtd/WHno1B0yhKV6G5lsdrXnAF1fnk+0MVdoAjkkVy+9uHjkUY/yZL
	 3PXnjoOwE8Fchv57WlfaRdzFb9U0DT0SF6WvPLGM+TaKkLKzQHnuZyP8riO3Mtekq4
	 jE0NWlNt57Gy/oN5+gaPH2YjuMqV85UrVtxa4c/WM6QMj3G6EOEC2vdtWi2VsJ0bPv
	 Y4VSwkyQtsrVh92whF4qWJ5ekKCvAlO4gTgNBaod0YETEdkm3+ZTrGZw/5+f7aM+bz
	 NcAx5vAQhKnfSFRb2rAKHov+7jKYsqvR84Siet3eHZHzVesG/GrxTxG8VyhXZmLNVt
	 N9aIlof+IvjQQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 498BD41214;
	Thu, 28 Aug 2025 22:32:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E3138928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 22:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C9BFF41265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 22:32:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F46P28EKFqvH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 22:32:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3CD6041264
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CD6041264
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3CD6041264
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 22:32:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id D233E60139;
 Thu, 28 Aug 2025 22:31:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D434C4CEEB;
 Thu, 28 Aug 2025 22:31:58 +0000 (UTC)
Date: Thu, 28 Aug 2025 15:31:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me,
 almasrymina@google.com, asml.silence@gmail.com, leitao@debian.org,
 kuniyu@google.com, jiri@resnulli.us, aleksandr.loktionov@intel.com,
 ivecera@redhat.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250828153157.6b0a975f@kernel.org>
In-Reply-To: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756420319;
 bh=F7A4MWxQSm9GPTsYP+rlxbmrqst3/1nPKdk9hDiLWoI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=iz5mGPLDyIKw7fx78+4jQfZNlCjP1o5tE3md2oI9fCqwF56X3EysRLl5OvQkgZoTZ
 +cn0reXW1RT5d8/WuA5If4GYV1mp71pfk28yGuP9xnK+9sHPiahpUk5gSU5A8Gd6A8
 Go14I9p8K9mZj8qoQZTiZhuCfJoFx52172m/ebUSQehESE2DIwPX51AzOvrkZict9G
 X5TzaH2mBAtkARBVGyR1EVEOSq5orCsQSbfufb8N2xkDxyjZFe6wFDtkAcIYVtGfVw
 64mY3NKGJqJ4NZKdlR5+zwCZSYlF6Of8QfLIQ0wQa3gIm/4Gs5mVqSoPDpRyVTaSnP
 7UFJLoZ83TYLw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=iz5mGPLD
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

On Thu, 28 Aug 2025 18:43:45 +0200 Arkadiusz Kubalewski wrote:
> Add support for user-space control over network device transmit clock
> sources through a new extended netdevice netlink interface.
> A network device may support multiple TX clock sources (OCXO, SyncE
> reference, external reference clocks) which are critical for
> time-sensitive networking applications and synchronization protocols.

how does this relate to the dpll pin in rtnetlink then?
