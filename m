Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B20926803
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5A4141B4A;
	Wed,  3 Jul 2024 18:21:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G3FeGrdb7Mo1; Wed,  3 Jul 2024 18:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 030F541B4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030888;
	bh=RLZ5kU2ElixEm8N/hothUEFY9McKExzUhVrdv4OMtmk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hXzeOATk0AUW6BbpS7k2dUX2ca2WqmJiH3GXnmIixQkGbGK9FBbPPw2Qct+/7HKUq
	 3JmzwSqLiDWF1eXSSsXNjYKSv4qXhBGo9plfd18rhBQsW3CABJNdEOoDLtOT0AI3fT
	 phUQXumH/NptZIV86obYmiT5h7n89CAtUGRg9O2Bqm+yvcJJfHimJqQ73ZZxY4Z6e7
	 1J/C+O+dVozQxwhEsLYvRPLUkqTLVj+kZLeH2TReXSXO54ZM3Dgj7/XlJaWIrGqrMc
	 QAHQePDvjKK1saxWp3rhWjzAfnt6V5G4eo7oavVBT5OvwCTzQQW+Ux8OEvEZyOpltM
	 2R7043Rc/juIQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 030F541B4E;
	Wed,  3 Jul 2024 18:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5811BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78A72846BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LL_syKjfOucU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:21:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C4091846BC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4091846BC
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C4091846BC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:21:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 00E2F60C2D;
 Wed,  3 Jul 2024 18:21:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31907C32781;
 Wed,  3 Jul 2024 18:21:23 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:21:21 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703182121.GP598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-16-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-16-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030884;
 bh=SsDyoKEIMJ6w9gucOeLK7ZZDgj2jQuEMvrJMpUJ1L7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iwLjVKpzdBtgrBpm9iQIVxPEwg5lSWkihGC1xqcCaS76V8WRngSnyEMsLIiklCC7i
 u9lcAQz0LTzMAFNP8Sd6s0c2/9QzfvhOYVvS97TsnAUxQzpwh1bR0lIl/LGclCj9W5
 bKXt1amCeHJzqM5HRoHUAHxvw70c8BebsOa+ngOFjN04OkvUnCS5KfTq4ec8eiJtJJ
 q5HUgQsVQc2cxWwjH1AP2sFDjS7gl10qyDEnQZBhx5AC6NnAhhPl4uJnt//zRsrgAu
 U2kARFZPqAvBymIc1NQz7msiOYXlNrU7nBKkxzAS6xao/yhU4iOTIMHa2RO3QlbIdN
 BSQzJONat++7A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=iwLjVKpz
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:36PM +0200, Karol Kolacinski wrote:
> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> 
> Implement configuring 1PPS signal output from CGU. Use maximal amplitude
> because Linux PTP pin API does not have any way for user to set signal
> level.
> 
> This change is necessary for E825C products to properly output any
> signal from 1PPS pin.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Added return value description, renamed the function and
>           enable parameter. Reworded commit message.

Reviewed-by: Simon Horman <horms@kernel.org>

