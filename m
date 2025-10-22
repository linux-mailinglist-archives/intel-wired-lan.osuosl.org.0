Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE97BFCA43
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 16:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E52FF82410;
	Wed, 22 Oct 2025 14:48:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XR8aBvxzf4CH; Wed, 22 Oct 2025 14:48:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EF3082428
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761144500;
	bh=jEx+reOy9ElRSeUMudCIHBoTA+jONmTFOxHeJAR4/Bk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ANp0NPZ2B/Lwlnx/T6oQy2GTfv7LlJs2PBFqNwqPCUeIKORGyLDoCLMyEpRAoFfFG
	 +gq8ag0yU8rSIR0BCa8T6Y3q7WC1fwbx6CNnqTL4CkslMUX0DquC5Yj8UztFjo1ZzL
	 FCwRAFHh73wb4Y9L2kq8hVv4cL71D9qj9z/2vOuMkemeeEOYJ5e3+BGyusrm5YHaMJ
	 xIygB3tSVObWUi+qmBV45HC/Hgq4gR9PxwOi72cXi6YuJh/NBxet4sg+z8xlrDO02n
	 5NqaaMaRr3RZI1ytQj9IQUGDMXgH/hkz3fw6n1/qSOvHNvIYjC1TyJCZ7/aCqCPZNr
	 ytHdRnnsLrvTQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EF3082428;
	Wed, 22 Oct 2025 14:48:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D940770A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:48:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CAEB86109A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:48:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TXFM3n9UZpNk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 14:48:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2F7C660F6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F7C660F6B
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F7C660F6B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:48:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3D27161262;
 Wed, 22 Oct 2025 14:48:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C378AC4CEE7;
 Wed, 22 Oct 2025 14:48:14 +0000 (UTC)
Date: Wed, 22 Oct 2025 15:48:12 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
Message-ID: <aPjurC9zjCBX1A_P@horms.kernel.org>
References: <20251021193203.2393365-1-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021193203.2393365-1-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761144496;
 bh=3EkH0sa2eXpE4fErqxGg2HLpYctPFuUlQHQ8YpxpWMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nxffNB4LsLQ1/IdjCbmcr0ovnH3/ifdnsyNzy5wTP5cFItXN+4UsJ8H8ing8vHu6f
 GcUVsfrT9cTI41kmq4NHEgYVjqkTpS7t6cXwFZMb9HKR3eqAdxkuJ0tXYrc/ikM/td
 SQsLWvd0tYEEwetsqgU6thRFODS2loYtX5He20QpeNXVye1kLlqxEIicmBBg2JC5BC
 GI4tmBTQkzvt1jUszH6O3EjHTfxCRZYTdl3u3AnvwbXPc23lv/Dnb4wu7v0g9quCph
 2Cc9E5ejALTgjKnEgS479F1dF9iqTWPcLGzLJJ1DsM7p4gT1vbRSiFvR8RYkyQ/0ri
 0bDbGEVEdsnxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=nxffNB4L
Subject: Re: [Intel-wired-lan] [PATCH net-next] igbvf: fix misplaced newline
 in VLAN add warning message
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

On Tue, Oct 21, 2025 at 12:32:01PM -0700, Alok Tiwari wrote:
> Corrected the dev_warn format string:
> - "Vlan id %d\n is not added" -> "Vlan id %d is not added\n"
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>

Interesting, there seem to be some other cases of this, at least under
net/divers. Do you plan to address those too?

In any case, looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>
