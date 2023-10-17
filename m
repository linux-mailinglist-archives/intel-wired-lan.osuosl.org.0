Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E68C17CC754
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 17:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 057D8613B6;
	Tue, 17 Oct 2023 15:21:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 057D8613B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697556096;
	bh=NurbrjHBnD+6Ehga0DUd8nenEWRig7BdbYgsozvqRnA=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pfx8HIUVIy5e7PLDHoJlPMdr3DaX2NJ6NM7t0iA/STVXquxel4KDz3T+mitT04utR
	 7PPfOssZmPT5U1PSbMlXKYQ2jr7tUs5XIKNyFw/5lbM0DtTrCO7u/yD1v72rvo59lu
	 Yw8/rjf+Gk9aBblqAaXQfCpxmkMhzkabV6itrIURDp+OlrY2fN2j0p3H2fjFbXV9Zq
	 nNkF4XuwEuKJXZToSqEHamE/adkgQ0T1yq72+JFlB9w5Ce8fBuF6uFegl7bHF3+DEw
	 xpBUJ6Ta+6lblQp32WvIgylOqekb1+gF1f2uEAJFvSlXJDGoOfxIZmGQB2KHdRcY0P
	 gaTsQez/PqICw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GrZsJNP7SfoX; Tue, 17 Oct 2023 15:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D78AA61325;
	Tue, 17 Oct 2023 15:21:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D78AA61325
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6CCE01BF32B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 15:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D15648214C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 15:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D15648214C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOFphA3cDTHu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 15:21:28 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D8C9C812AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 15:21:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D8C9C812AF
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CE922CE1D79;
 Tue, 17 Oct 2023 15:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B64D4C433C8;
 Tue, 17 Oct 2023 15:21:22 +0000 (UTC)
Date: Tue, 17 Oct 2023 08:21:20 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>, Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20231017082120.1d1246f6@kernel.org>
In-Reply-To: <b1805c01-483a-4d7e-8fb2-537f9a7ed9b4@redhat.com>
References: <20231013170755.2367410-1-ivecera@redhat.com>
 <20231013170755.2367410-4-ivecera@redhat.com>
 <20231016075619.02d1dd27@kernel.org>
 <b1805c01-483a-4d7e-8fb2-537f9a7ed9b4@redhat.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697556083;
 bh=qbYVXv4lkClIrB/LA3B8Jyjx9weJj4eJIR8Mx8PZSYg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jqRAq7CIsOinTEsGUuo+mqcv9B0r2CXjADfQ4alGoVBKPa9EXx6j7ii9pwS8T5GPG
 qkbsJP+Z4OSLjbPKwb8wVfJPScrt+g7RY9OnASGqa0oLI+nZudKHO17RTLro2tvQgi
 0rKV89mkA2GAyutB0nvGmPm/sRzYunUVmCvxjSQIxxi4Fvi2/kq+rYObzQ6B2faq0W
 5VM7d3/Nepn29SFzYmUMnxK4hFoZJkLRap/mNlicUsVCy22af19XxgBqmnRwefoykE
 mbRrJNDRlnAkV3oOsPz2oFC+BUxqabo6WQYZwfoWk971qZN2ZdO9WZULka4eDX0liy
 8MCb7vl6Iybsg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jqRAq7CI
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] i40e: Add handler for
 devlink .info_get
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 17 Oct 2023 11:56:20 +0200 Ivan Vecera wrote:
> > Your board reports "fw.psid 9.30", this may not be right,
> > PSID is more of a board+customer ID, IIUC. 9.30 looks like
> > a version, not an ID.  
> 
> Maybe plain 'fw' should be used for this '9.30' as this is a version
> of the whole software package provided by Intel for these adapters
> (e.g. 
> https://www.intel.com/content/www/us/en/download/18190/non-volatile-memory-nvm-update-utility-for-intel-ethernet-network-adapter-700-series.html).
> 
> Thoughts?

Hm, that could be better, yes.

Jake, any guidance?

> > UNDI means PXE. Is that whave "combo image" means for Intel?  
> 
> Combo image version (aka CIVD) is reported by nvmupdate tool and this
> should be version of OROM that contains PXE, EFI images that each of
> them can have specific version but this CIVD should be overall OROM 
> version for this combination of PXE and EFI. I hope I'm right.

Sounds good then!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
