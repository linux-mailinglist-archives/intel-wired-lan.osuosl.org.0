Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D979F34FB
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 16:53:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0228B80F87;
	Mon, 16 Dec 2024 15:53:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nu4gFUxhWADh; Mon, 16 Dec 2024 15:53:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EB9C80F75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734364389;
	bh=j5fQmgHwHl0RYYMZhrLSGn2i0vOB4a/oxn9UBeVQktI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Du7LUfCpLIpykJCfkpRiMoS6sD+rVsD89f9crSp1TbB7Js50V23NtVPLBUYQRrQdm
	 4OtQHwfQcxj31hiqmx6WQMI0r553Bb+gUFfM3FhIiLJiLV7oZabcrUu3sUnKsc3D1L
	 w9YxyeDAc98z5OLFnBXnz+P5p8vw0DLfN96Ll7vxFLspQembyOoZVX8+Pmp4fV+fgp
	 IrlDXx0dF5kp+p+E5RejELofR43g/J1SL0Pfy+57Qm8n9hogsFOr2aqPy8+SH7NU0T
	 qOgWkNafLOPU8HU/KrpeXOyiTqmqKHi79q/MS54EjpTV28acdMdXDCZOh2knYpLUpj
	 SnKKo2w5hQwFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EB9C80F75;
	Mon, 16 Dec 2024 15:53:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 89CD7C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77D1480F76
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:53:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KVQzVeFw7d6t for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 15:53:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BD7C980F38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD7C980F38
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BD7C980F38
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 15:53:06 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 62DE15C5DEC;
 Mon, 16 Dec 2024 15:52:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9308C4CED0;
 Mon, 16 Dec 2024 15:53:04 +0000 (UTC)
Date: Mon, 16 Dec 2024 07:53:03 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@linux.intel.com>,
 <andrew+netdev@lunn.ch>, <netdev@vger.kernel.org>, <horms@kernel.org>,
 <jiri@resnulli.us>, <stephen@networkplumber.org>,
 <anthony.l.nguyen@intel.com>, <jacob.e.keller@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20241216075303.7667c1a1@kernel.org>
In-Reply-To: <30e3c7e7-c621-40b9-844c-d218fb3e9f2c@intel.com>
References: <20241209131450.137317-2-martyna.szapar-mudlaw@linux.intel.com>
 <20241209153600.27bd07e1@kernel.org>
 <b3b23f47-96d0-4cdc-a6fd-f7dd58a5d3c6@linux.intel.com>
 <20241211181147.09b4f8f3@kernel.org>
 <30e3c7e7-c621-40b9-844c-d218fb3e9f2c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734364385;
 bh=RxQ5nfW10d9HJJNLnfBJcNktaH03+dvNMHOBKk4AhkQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GvCiA1bjVl0Kkn8m6XL3MOqUPh/5P/UOdcd1ie3DWV+Tz5WBk2uN0Hx4OdPb/YAqo
 3MVla1rknCU6x6liFpx60F5PzgMRFqBSS9EkzWD2iMvD/fomL+MISB1acpPEN9fFON
 eJWhKsy9a71L2XDPE+SvtiOY4quFltD87Uw97U2vbuYVgnmIzHlZKaYrxHjsbhMBn6
 ZBUOgmHAyHhXN1rLo9EfzI7jzO1pDrDwFFPvca3/RwYsadbciaLA1BTJUl1Is8aVuu
 /BPB36SMxhCwIhYfBTW50pikXnPfKYfOGnubAGHfJRcx3qMN4M5jbqobDMI5cG7qfN
 XI1hBvpmvXT2g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GvCiA1bj
Subject: Re: [Intel-wired-lan] [RFC 0/1] Proposal for new devlink command to
 enforce firmware security
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

On Mon, 16 Dec 2024 16:09:12 +0100 Przemek Kitszel wrote:
> > Please point me to relevant standard that supports locking in security
> > revision as an action separate from FW update, and over an insecure
> > channel.
> > 
> > If you can't find one, please let's not revisit this conversation.  
> 
> It's not standard, just the design for our e810 (e82x?) FW, but we could 
> achieve the goal in one step, while preserving the opt-out mechanism for
> those unwilling customers. I think that this will allow at least some
> customers to prevent possibility of running a known-to-be-bad FW
> (prior to opening given server to the world).
> 
> We could simply add DEVLINK_FLASH_OVERWRITE_MIN_VERSION (*) flag for the
> single-step flash update [1], and do the update AND bump our "minsrev"
> in one step.
> The worst that could happen, is that customer will get some newer
> version of the firmware (but a one released by Intel).
> We preserve the simplicity of one .bin file with that too.

Please explain to me how this will all fit into the existing standards
like SPDM. Please take security seriously.. this is not just another
knob. How will attestation of the fact that someone flipped the knob
work?

A much better workaround would be for you to build multiple FW images
and give customers an image which locks in the min version and one
which doesn't.
