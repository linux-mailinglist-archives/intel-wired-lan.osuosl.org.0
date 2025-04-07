Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E55A7F036
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 00:15:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 694DC610DE;
	Mon,  7 Apr 2025 22:15:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PDUoQQJDKuiZ; Mon,  7 Apr 2025 22:15:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2B45610CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744064130;
	bh=WXp1ejzPNKa/hQ1m56rZ8+SUq7W8XsEZVJNQ8dRT55Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9hFqw4/rs4LXWzcKHzkhRZHd/KmGOpspLpGVOo+dfN03DRgfnzP8QIZBPIu83eRxw
	 jpUuh/ewK5l6VXYCTcVpsDdHUXVk5fcr1wx/sqHxfd/XJ1i9XRSAM/INoZYw+JMlL6
	 9zF3dO6LQ9wd1QoY+dZ5ejDLN9rQyrVAwGIoPg1yHCj0Rb37KkTBSOXP4gKvitil41
	 jBdcRtB1y63xC0gvUPKTdSghDfk5lSqeDcBF34sNnjfHRvxFN5M5qP7FqeXSMzes+X
	 ATniLH490rNh9jWBsnJ5WJXBTUWKozJ07K4XFkSwrfXKpFtt/5fGQ2xHgxNURxZala
	 SxMQPaZM5hLbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2B45610CE;
	Mon,  7 Apr 2025 22:15:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AD3671DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9D79382025
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:42:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hKoq8m-sd1sV for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 21:42:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=jpoimboe@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0062B81CEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0062B81CEF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0062B81CEF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 21:42:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A8A6C5C4B8B;
 Mon,  7 Apr 2025 21:40:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B6BCC4CEDD;
 Mon,  7 Apr 2025 21:42:52 +0000 (UTC)
Date: Mon, 7 Apr 2025 14:42:51 -0700
From: Josh Poimboeuf <jpoimboe@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: linux-kernel@vger.kernel.org, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>, 
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Peter Zijlstra <peterz@infradead.org>
Message-ID: <ficwjo5aa6enekhu6nsmsi5vfp6ms7dgyc326yqknda22pthdn@puk4cdrmem23>
References: <4970551.GXAFRqVoOG@natalenko.name>
 <fdb5d23c-8c39-4f73-a89d-32257dac389b@intel.com>
 <5874052.DvuYhMxLoT@natalenko.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <5874052.DvuYhMxLoT@natalenko.name>
X-Mailman-Approved-At: Mon, 07 Apr 2025 22:15:29 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744062173;
 bh=1aplgnizhUX2KCMPSohtzujJdpI6mRSUV6g2qAsz/1E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VUdWfIbRKyPlXHdyZ6qauIe1bmxf+Ot0q8NfnVj5M89zJOMXU1e5B/lnV+etkbT53
 iDsN4R2PXv8zPU9b2zfQiwarbxdbtycBRiXsh/W5iW6rknfZkssTebvFVWp14ShPTz
 xDpUACU7CjOcZTmt8aYlluTM8vrmWD0EfRqey59y2k5OQUI6K00mdbHlksPsXoIRiC
 BO/dqZ7RTI9bW14ttwOkOg2476r/L/w1nB7HOuoVvmAIB7oLURd/WiquOff7ce9FUJ
 BWbGkEph5/DieKip8VsgfmHtY3u01lpq50PFFg6irQ/x6rj1WDRGwReDP0+zIljM9k
 FuSgVLaFopj8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=VUdWfIbR
Subject: Re: [Intel-wired-lan] objtool warning in ice_free_prof_mask
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

On Mon, Apr 07, 2025 at 11:21:27AM +0200, Oleksandr Natalenko wrote:
> It's not a new warning, I've observe it for several recent major kernel releases already.
> 
> I do not build with CONFIG_COMPILE_TEST.
> 
> I've also realised I see this warning with -O3 only. I know this is
> unsupported, so feel free to ignore me, but I do -O3 builds for
> finding out possible loose ends in the code, and this is the only
> place where it breaks.
> 
> > > ```
> > > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0() falls through to next function ice_free_flow_profs.cold()
> > > drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0.cold() is missing an ELF size annotation
> > > ```
> > > 
> > > If I mark ice_write_prof_mask_reg() as noinline, this warning disappears.
> > > 
> > > Any idea what's going wrong?

This type of error usually means some type of undefined behavior.  Can
you share your config?  No guarantees since it is -O3 after all, but I
can still take a look to see if it's pointing to a bug of some kind.

-- 
Josh
