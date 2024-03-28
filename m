Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF8F89071B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Mar 2024 18:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 063D7820C9;
	Thu, 28 Mar 2024 17:23:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fhK4c0cNrKg7; Thu, 28 Mar 2024 17:23:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7234E820C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711646635;
	bh=g7N7lmDpM4PEuuoR9PoaCvd6U2s0ToGHqd78dnLQucI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7D48FxL8wLpbRZm6sQLIb+bo6MSLsHuZk1qDmqYb+rTo0MyCwduE5sj+PxLkZrPyt
	 TcM5nQ/afquS67tJYawoZNZ+hfCJnI/uopw45MmCuVEnE/uM71bUKVAts7BsTcqNFc
	 JrhvugokZ1BMQGl40HLNbr5w36PerssXo4U5EdF/mFoGOM0qxOz6XyAXufwAjBwsDF
	 ywC0ulQyOI3Jfd1TCn/+pc8pBQMwvkzLbjQQ3oqqpq4YQEdl4Gg9bp2TFmEnZ90kBQ
	 fqOO6/cxup9fwF6O+yRfSiLMwIdLEuyfcyJ2yuCQSJCnAWrH0ArZSBXCrcJkmDq3gd
	 8YMjhw1SldGeg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7234E820C6;
	Thu, 28 Mar 2024 17:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 035861BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F06D5820A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nkf_qpX46QhR for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Mar 2024 17:23:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E76A8208F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E76A8208F
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E76A8208F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Mar 2024 17:23:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id CBCCCCE2C2E;
 Thu, 28 Mar 2024 17:23:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A588BC433F1;
 Thu, 28 Mar 2024 17:23:47 +0000 (UTC)
Date: Thu, 28 Mar 2024 17:23:45 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20240328172345.GC651713@kernel.org>
References: <20240327075733.8967-1-ivecera@redhat.com>
 <20240327075733.8967-4-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327075733.8967-4-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711646630;
 bh=P2CKB0L231HThL4Jt5a3TeDwHGhyU9+DFrwHKENAF5I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fI842sPQ+LoWq1tsKBLskQ8CaHp5btU0ZDrBXzMxmxK9mMDCOpxfiC27RSJf9lFxH
 5inhl+CGsY7Q+VllkoOlWUcFY6j4gChUA6eJBpfkUl97u1EaJMU1EiclDMHjTGzjbT
 9eaZQea83f8IjtWlO9EbusD+FeigG9FaMGKZx/J4pF8zuExHI9BEvrDVcKp80bYllH
 QUtBPu6EA6s9GNZRRnFFHMR7hRBGbRIOF1WtsnSkv1EFqMKaMxv8nrl7mvTicOmDdb
 dMG/xGwG5Le/Z9QmOcWzqeThVTEMIShwW6WEygIvARayKSe/MqMCM+mfOzzOZNrOKP
 3jvMkNmyC674w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=fI842sPQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/7] i40e: Refactor
 argument of i40e_detect_recover_hung()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 aleksandr.loktionov@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 08:57:29AM +0100, Ivan Vecera wrote:
> Commit 07d44190a389 ("i40e/i40evf: Detect and recover hung queue
> scenario") changes i40e_detect_recover_hung() argument type from
> i40e_pf* to i40e_vsi* to be shareable by both i40e and i40evf.
> Because the i40evf does not exist anymore and the function is
> exclusively used by i40e we can revert this change.
> 
> Reviewed-by: Michal Schmidt <mschmidt@redhat.com>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

