Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 39106A4E25F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Mar 2025 16:08:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F28982093;
	Tue,  4 Mar 2025 15:07:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVMOWZ5lE8hM; Tue,  4 Mar 2025 15:07:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 843CC82081
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741100878;
	bh=fQIWx2nmMG91M2bKYSGCCMU7fUeJQJZ2n9bIALNGd4I=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zS6TiS5H//+y1UeSzqiAED0Xfpo+/6flcgXuiZbdPJkGqARIb9iUSNYLqffCOEs5p
	 O2qkDKWej63wxjVYO71fxMUjD1FcUGjKfK+uYWs1nMpgUp+urzIhcVmlhaiQukFSbN
	 MGLdN99v7/BJkDOlMd8Yb0wSYG8IB87Ni8r3xRtgsrysJ8ow7LJVGhrbXuwekoKj8u
	 I94ce/oYY/OjMciABuDP//nhEotofXpeDgZ8OACIG/r+QEku/MbtrTIBJOVIUNjJhl
	 5Bx90Cyoy/+ZNiImhdTWC85MTmGDbRCE8Okgjt8uw4S0Qk/xrhbJVacvYtxb6BXwxQ
	 tzy7WLVbg10yg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 843CC82081;
	Tue,  4 Mar 2025 15:07:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BD4F3D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:07:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9C5D74044F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:07:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XCOy29PQAMY8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Mar 2025 15:07:56 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=160.75.25.115;
 helo=beeline1.cc.itu.edu.tr; envelope-from=root@cc.itu.edu.tr;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AA10940026
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA10940026
Received: from beeline1.cc.itu.edu.tr (beeline1.cc.itu.edu.tr [160.75.25.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AA10940026
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 15:07:55 +0000 (UTC)
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr
 [10.146.128.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by beeline1.cc.itu.edu.tr (Postfix) with ESMTPS id B041540D4DED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 18:07:53 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
 by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6fCF6cflzFyVd
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Mar 2025 18:06:17 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
 id B8A7342737; Tue,  4 Mar 2025 18:06:10 +0300 (+03)
X-Envelope-From: <linux-kernel+bounces-541849-bozkiru=itu.edu.tr@vger.kernel.org>
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
 by le2 (Postfix) with ESMTP id 516E041BCF
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:49:30 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
 by fgw2.itu.edu.tr (Postfix) with SMTP id 2AA172DCE4
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:49:30 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by am.mirrors.kernel.org (Postfix) with ESMTPS id 5384B1893554
 for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by smtp.subspace.kernel.org (Postfix) with ESMTP id 57B8B21323E;
 Mon,  3 Mar 2025 13:49:06 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0912210F6A;
 Mon,  3 Mar 2025 13:49:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1741009743; cv=none;
 b=dn4zeYWOABY6+14LI3LTmvX5EdrNcxrivJqysiKe5RTWaoNKZqD7gW2Z2Y8Vp6JcEKR6kAYqrBKlhgGl3LIIMGgv6GI+RtJfSN2YUaq5mCpDISy75vf90RFV2ZmQd2j5yYywpVOg5z5BXs+d7KtWiIAxYWw1pWqbdxQLHIkv1ks=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1741009743; c=relaxed/simple;
 bh=CyfaPmwEF0Z7BMP96K76YmpgvffsaHwClknfwoPWEEQ=;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
 Content-Type:Content-Disposition:In-Reply-To;
 b=RBdoJGWRKTsRaOIF6QOIVqQzB1bhFPJB6WQZxFwaYuitgp7TnWjZLek61nzEUiCaWi0B410O+cBeZ02iDlVs8T8judMhnQuKm2gkYbcEmMfmda6NAvJ/79mNMVUIBzv5O+cou+pHMbrQRK01KKsvQa8vT73BKEO/BXfwgu3izIk=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none) header.from=lunn.ch;
 spf=pass smtp.mailfrom=lunn.ch;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3hivcp3h;
 arc=none smtp.client-ip=156.67.10.101
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tp6A2-001oqB-J6; Mon, 03 Mar 2025 14:48:46 +0100
Date: Mon, 3 Mar 2025 14:48:46 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: joaomboni <joaoboni017@gmail.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <de6bcb17-964e-475d-b535-ce153760d9dc@lunn.ch>
References: <20250303131155.74189-1-joaoboni017@gmail.com>
Precedence: bulk
X-Mailing-List: linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250303131155.74189-1-joaoboni017@gmail.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for
 more information
X-ITU-Libra-ESVA-ID: 4Z6fCF6cflzFyVd
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741705592.26791@wYTDexaYuOPHuMQHQOHEMg
X-ITU-MailScanner-SpamCheck: not spam
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=fQIWx2nmMG91M2bKYSGCCMU7fUeJQJZ2n9bIALNGd4I=; b=3hivcp3hyikl1qgpt2K1DfODDd
 HqQjl6fQN9JIlWmtUUsTt8EBoZkGu/Ckdz39k91YUBofEcKYafu/WEtVyeSvj2kA9YpjKKMZmlPY/
 Hqaqwpg9seKtd1Qjxv8JShHhcQhnvlEdpCt1pb7a42/KCURdRkAC2x4dNWFhRmwIW82g=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=3hivcp3h
X-Mailman-Original-Authentication-Results: lesvatest1.cc.itu.edu.tr;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=3hivcp3h
X-Mailman-Original-Authentication-Results: lesva1.cc.itu.edu.tr;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3hivcp3h
X-Mailman-Original-Authentication-Results: lesva2.cc.itu.edu.tr;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3hivcp3h
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.b="3hivcp3h"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=156.67.10.101
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 spf=pass smtp.mailfrom=lunn.ch
Subject: Re: [Intel-wired-lan] 
 =?iso-8859-1?q?=5BPATCH=5D_e1000=3A_Adicionado?=
 =?iso-8859-1?q?_const_para_melhorar_a_seguran=E7a_do_c=F3digo?=
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

On Mon, Mar 03, 2025 at 10:11:55AM -0300, joaomboni wrote:
> Signed-off-by: joaomboni <joaoboni017@gmail.com>

Sorry, but the Subject: line needs to be in English.

And the name in Signed-off-by: needs to be a real name.

The code change itself looks sensible.

    Andrew

---
pw-bot: cr

