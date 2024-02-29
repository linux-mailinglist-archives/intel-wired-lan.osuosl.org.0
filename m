Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9954D86CCE7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Feb 2024 16:28:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4CC3D418F1;
	Thu, 29 Feb 2024 15:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJpkom0K0BOK; Thu, 29 Feb 2024 15:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D644418F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709220516;
	bh=mBQXZyrRxgzNUolzhgxjlsuqSS7+yHr2XWDMdZUoF8w=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xBZhqHam97mccmmTXkLkv3ZvrHMkj6/PGIdA0m2Lcyxy4xXB0QVfjNhIzh1sNWQXM
	 MT4CVjWDTZ2/1NOR6fSBIDg7AEiqwtts2+vQNfg1L3ld9Jvm8U18eiq+kEydAXb2ll
	 Hz9WHELfRlswmWqjOQ2CnbSHuVyNTVMuSrtyd6y2le7SDZxdNZPCJ7Cju1o9Nz8lSy
	 lWAkZm6w/lro6gvsi1nlooF7ld9A7kbssj4bXo1vu5tyiHcRlzfPB5K14v2chrft/h
	 WOU3GD/RclsWjE3fct+4JlhonDdQ5zrh7WrtS9fNf4WYcfp/vvHDq3HCqLUADpriU3
	 Rt+CTd5ZSVNOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D644418F8;
	Thu, 29 Feb 2024 15:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 651241BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 15:28:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5CB26827C6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 15:28:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XdH-Wx6oeJjO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Feb 2024 15:28:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B7B6A827A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B7B6A827A8
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B7B6A827A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Feb 2024 15:28:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7ED2E60C3C;
 Thu, 29 Feb 2024 15:28:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F2A4C433F1;
 Thu, 29 Feb 2024 15:28:14 +0000 (UTC)
Date: Thu, 29 Feb 2024 07:28:13 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <20240229072813.5d7614c3@kernel.org>
In-Reply-To: <ZeBMRXUjVSwUHxU-@nanopsycho>
References: <20240228155957.408036-1-larysa.zaremba@intel.com>
 <20240228084745.2c0fef0e@kernel.org> <ZeBMRXUjVSwUHxU-@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709220495;
 bh=mBQXZyrRxgzNUolzhgxjlsuqSS7+yHr2XWDMdZUoF8w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=thFtna3XIf74IR8tJBbuB5/fLJRn8cAoY8FRSZp73ZENJF23ybG9GkALI0fbnxSHL
 TlTNqyFiS/wWRH1GKf4Wx4nVitwEZ8gUAx7cyfZ9ViqQ33HSDZX9/uRch7fB3WVgAY
 wOcEzvnbucsi0EU+Rpu1jQ/YtlDdps1cmB38pQ3ILD+Bq5MdnJxGtzzFP11C44afAD
 ELBnWpinULqCORPnTdGK6rQsk8qoBVx98mONgIFfI0iWJ0qwWmHAwBngsS8P8Of3Cs
 u3h+453um7Kw43U/9RT3YxGeVITfmT/vf+EMEUlSRjJZELbqG0mrxSSKakeAOVECd0
 sexdu9ZX7IYEw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=thFtna3X
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/5] ice: LLDP support for VFs
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Eric Dumazet <edumazet@google.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Jakub Buchocki <jakubx.buchocki@intel.com>,
 Pawel Chmielewski <pawel.chmielewski@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Lukasz Plachno <lukasz.plachno@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Pawel Kaminski <pawel.kaminski@intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Feb 2024 10:20:05 +0100 Jiri Pirko wrote:
> But isn't it a matter of eswitch configuration? I mean, the user should
> be free to configure filtering/forwarding of any packet, including LLDP
> ones.

This is an LLDP agent which runs as part of the NIC FW, AFAIU, not about
forwarding or filtering.

They already have the priv flag, so best to reuse that. If not possible
we can explore options, but as Larysa mentioned herself in the cover
letter sysfs is probably low on the preference list :(
