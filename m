Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AB17C47D8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 04:34:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EC94404BF;
	Wed, 11 Oct 2023 02:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9EC94404BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696991692;
	bh=peGk+PiMGWbfacikj6LaYsSyNtDbXq+AVoFMpqljz1c=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6URuVasyr7ufUmPJkqet+7APTR28OBOI8tEobPtJbPmRrAySTmnHybwtyULi8/F/q
	 niEl32eQR5L/M9kA01rOi+6jzxnVFj7gEhiYz9qsLerGYo7+JuBuaGeQ/DuRD43DQM
	 elDz23blWiiUY/fPIstpFIZHbezIRpz6ov4FvwZzqVDPttkvBxZEMizzRwyypQz+OS
	 MwPd3371TItxYV8so39bthx1N506IuX4RfMTJ475c+RZDMTeo2si7kiIBT80mZuGHf
	 BaYHlvr5KAHEu+X4fhh1I81AH9tqbUcnuU0Mr7EUwnx82Nzd19nmAySYjz5ktY70rJ
	 TiyMAA90GK2BA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6RKi49AK1BES; Wed, 11 Oct 2023 02:34:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7CFAE403A2;
	Wed, 11 Oct 2023 02:34:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7CFAE403A2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55CF31BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:34:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27535611B8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27535611B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wIki2JdYht2j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 02:34:45 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2AE5060F47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 02:34:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AE5060F47
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 4ED5EB81E12;
 Wed, 11 Oct 2023 02:34:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 224A4C433C7;
 Wed, 11 Oct 2023 02:34:41 +0000 (UTC)
Date: Tue, 10 Oct 2023 19:34:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <20231010193440.76f93d5c@kernel.org>
In-Reply-To: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
References: <20231009222616.12163-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1696991681;
 bh=FIVK2LFMNaBYWMWiLVN8ylTMPWm33ozh0ZjII2bqVP4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZJeTP3e+xhussaXir+c6WTyVo+EfMBXdFNtepz9PD+zZVgDgVGD/uZyBO+9xvPeeT
 8f3XJPp8hZDPu3TG9MTF8j2aUcJKuL7jcJoJGrMO5UcQ/sZ9GRtylOTX0l1aEP/nx6
 DbOzmS4tIkU3YSwh2f/0hUjnAWQfthYchudcg7Bbjf7fy2n2nyLtyKdgPQREvXaE0/
 ruIL1ISvTJIJRTm+61P+y7DdiNO3vL9G2Oe/vYPfaGIclx6GWbIG3hVEQhEwRPntvP
 KDgQSN5MpsZGrxi7iEPRsgdufLUJLLlyfl6a4fsF4YKgNbWd/yffgJryPL2bGN7UXW
 YYW5VvlJY372w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZJeTP3e+
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 0/5] dpll: add
 phase-offset and phase-adjust
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
Cc: jiri@resnulli.us, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 vadim.fedorenko@linux.dev, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 10 Oct 2023 00:26:11 +0200 Arkadiusz Kubalewski wrote:
> Improve monitoring and control over dpll devices.
> Allow user to receive measurement of phase difference between signals
> on pin and dpll (phase-offset).
> Allow user to receive and control adjustable value of pin's signal
> phase (phase-adjust).

Does not apply, please rebase / repost.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
