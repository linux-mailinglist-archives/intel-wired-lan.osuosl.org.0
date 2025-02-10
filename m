Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA73A2F082
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6266260ADC;
	Mon, 10 Feb 2025 14:58:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gslg8veV3dVd; Mon, 10 Feb 2025 14:58:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81D4260710
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739199512;
	bh=H2wexfijalRbRZgKoTXhkJl5A95n+GpaiTrJP70Z8u0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N8yBJDAy/meRYklQBbMMWhHVh05tDnVva1nVIL/vheGSNcWf+ApjpYO/c59IzkU/1
	 Y8lpFdv61SHNx0fvsZtwUe5Ps3wmvORZzg6hM+SNvtd7G+ZuRZPhHHtfEgAn8gVdBj
	 GZO3rGdfQyx0AI+Ki39AUMp6jqHve2DLamxoB7uEfWxU4aMHsWTRZzmYbRrSoB5p+T
	 krdV6v1NOBZi8j0pLsQWDJjmXYqJzRp8Asxa+vLqJcoTWMG8evIZDOudDovBQWF9IA
	 Ufn1NWRM2J+0FYTLgxFfz3oKk29fCxvlLW3eUDUlJPG2a/7RvDllE4KKkaWP9FrZeq
	 3omTSdpK2qIIg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81D4260710;
	Mon, 10 Feb 2025 14:58:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B0356C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A2E2401D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X6mVvaB1jpkw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:58:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9FC6440197
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9FC6440197
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FC6440197
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:58:29 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 47D61A4172A;
 Mon, 10 Feb 2025 14:56:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 284A7C4CED1;
 Mon, 10 Feb 2025 14:58:27 +0000 (UTC)
Date: Mon, 10 Feb 2025 06:58:26 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Piotr Wejman <wejmanpm@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo
 Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250210065826.63a8822d@kernel.org>
In-Reply-To: <20250208154350.75316-1-wejmanpm@gmail.com>
References: <20250208154350.75316-1-wejmanpm@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739199507;
 bh=lNe0mZFoZDbbCnGKAeb7nhDZMeQMOeBsOMs6KbIvGMY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Pev92nibWQAIsa+j//NG3oi60URV8IstozxTcs9QE4oxHRTtEvFUiW0NJ8BYziZcO
 MRWyoBzpFe/1g9MuRVxlByBkXW5GzzvPkkS1LwFRcDqz6U5hRX4cQXQqi8CADuWgtm
 Uj7uIVnJ/b571wAy6F3nxPPolUNrsosgXvH+MvJPPLgxp16ygUwNWOdf964ZzTv8vP
 x51WXs3cVKQdODZamGOyaVVFqvVaANVJ7CCZEAg+JZAfqRO3r1WeGsrtZD3Rqitm+v
 3H5QbJ/Q3FdQy1Mctmg02ijs5DUoEgjc+IrekhIVjGMmNv8EZu1EIGNF711NkIWtYf
 CngAr2r6LyYow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Pev92nib
Subject: Re: [Intel-wired-lan] [PATCH v2] net: e1000e: convert to
 ndo_hwtstamp_get() and ndo_hwtstamp_set()
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

On Sat,  8 Feb 2025 16:43:49 +0100 Piotr Wejman wrote:
> -	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
> +	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP)) {
> +		NL_SET_ERR_MSG(extack, "No HW timestamp support\n");

No new lines at the end of extack messages, please.
User space adds its own line breaks.
-- 
pw-bot: cr
