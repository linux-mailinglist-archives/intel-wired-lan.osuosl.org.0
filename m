Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E5788E734
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Mar 2024 15:50:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 783B68175D;
	Wed, 27 Mar 2024 14:50:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Yw4sPVl8YRg; Wed, 27 Mar 2024 14:50:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE32B81678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711551024;
	bh=SXcSrZdl5GfAm4CtP2GTrlByIyo/0/zBB0b/nhcuue4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tUz9zRhHMLCddiEPskGLt/EJvsEkVsU+KYV1qjtWIADpeo+jtZYK5vf5eFYlwy6yP
	 a6fqAzNy623BmD6xTRa7/TlBIE8X8S/OoMIgFJG2Wx+MCOQrZMHBg8wjR2wdWI06OD
	 AmjgbJsTa8+KttJu922puMfdaz9Wk0r+IlHs55l4Ehq8UZ5I2GRI2OMG+y0+Tb/caG
	 qnv/n/sPmT2Ge64gAepMfHBkPvGxUiWzp5YgyIYSom4DTSVUbmMSW37HLJCrwwJBvi
	 2ttzf/pCitdbWa546jlKSc/9AL8wUsd7PdFOGLBpQRXu919Pi+xjq0Naa8vf4EWy7B
	 hb39i9Z34mqXw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DE32B81678;
	Wed, 27 Mar 2024 14:50:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E12E81BF279
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9F0840547
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jdvc1BpCZmhV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Mar 2024 14:50:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 04C6C4015A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 04C6C4015A
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 04C6C4015A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Mar 2024 14:50:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3C9DACE26CA;
 Wed, 27 Mar 2024 14:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3ED60C433C7;
 Wed, 27 Mar 2024 14:50:16 +0000 (UTC)
Date: Wed, 27 Mar 2024 07:50:15 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240327075015.7c13a71b@kernel.org>
In-Reply-To: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
References: <20240327132543.15923-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711551016;
 bh=lxcOWeusmPSxt7j/dpCPZEwYKj+CCXjeiAYCqK4Aj40=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oD5PkY21xIbvo7zIlxtygT9UAXEPoV3R6qKI27CeDj3xo8vXgnDPNrGGQ6+m2faHG
 VYAIklWFHx+DMBmpy5MHdZ8TPnNvafESLc/jEdESTkr75Tc5sF0Q8m9XtJ4UOsRehY
 JnlqnA8QM0zOWp+lFTRfQ16B/+RU695u0zRgn4yk/hLO5+q8yngLHkskXcrGz20NPR
 ytCO9hVkLuGc2NnIAHI8P1IQlHyBgrINyFO5jqArev7BuKFtMqauW+1/Mc7zgTD4ti
 qRfU4u7EkR3DCqdxQVYsO0c6cCFI4wVFviNKI1TbqxDBKIn2238Ev2GiutYSqfNuko
 Rq5xJ+73xpZGA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oD5PkY21
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/12] Add support for Rx
 timestamping for both ice and iavf drivers.
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 27 Mar 2024 09:25:31 -0400 Mateusz Polchlopek wrote:
> v2:
> - fixed warning related to wrong specifier to dev_err_once in
>   commit 7
> - fixed warnings related to unused variables in commit 9

You posted this yesterday and got no feedback.
You're not posting to the list just to get the code build tested, right?
There's a lot of code getting posted, give people more time to take 
a look. v2 feels a bit rushed.
