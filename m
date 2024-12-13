Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5519F0BB9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Dec 2024 12:55:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E8DD405EF;
	Fri, 13 Dec 2024 11:55:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pBHd25tLaHrO; Fri, 13 Dec 2024 11:55:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86BE24054E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734090918;
	bh=F/YVKsDAkBR8KsKnMCTwcHYXJfPwFjloeyh0GCbXelI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8BXU6RjnCIRXkRvygUIQd2eZ7L7ORAn71yq3YJJgKNM57bb0hbxZRxQV6ePcgaqe4
	 TNXhvhM/GZK0+4dUHTvrWWoob2bz+vhOAPPq7FxnjFxjZ5R/I9lPFxPN8RxNkSTBNy
	 rHaX+FGHPMjbH7ZsmDghVgzKoNfcX9YFd0PA3tvH6PHxZ31sYHnQstTnDvPqKT6/Bs
	 V+vF5k3ch7IVCjhx3fAHLC2quMgjS5jP1yEt/pS5+0rKhfKWiwLE6utRx9bCryCNKY
	 D1crFQoBJ+Rf/3XqpkunUjmM1cdVcrdoVN6318hqYGmCf0nGSMqwi/KEgaoho789//
	 y6aHsL+bZe+8w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86BE24054E;
	Fri, 13 Dec 2024 11:55:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0F09075
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E490F8135D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KIWxuaNVqjRd for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Dec 2024 11:55:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 634B48132B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 634B48132B
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 634B48132B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Dec 2024 11:55:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 505145C582F;
 Fri, 13 Dec 2024 11:54:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FCEC4CED0;
 Fri, 13 Dec 2024 11:55:12 +0000 (UTC)
Date: Fri, 13 Dec 2024 11:55:10 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20241213115510.GR2110@kernel.org>
References: <20241212153417.165919-1-mschmidt@redhat.com>
 <20241212153417.165919-4-mschmidt@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241212153417.165919-4-mschmidt@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1734090914;
 bh=J9IlNwTsvzqNL+tA2jbFJBV6BSl+/K2eaCgauGcWQMU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hIZfGVN+mDUQgpbt56LPJhmTomBYDfsBnra6qeYfnWwyOf+Lhnzu0oFC9Sg6zW4L7
 aCgaTJ1JC4w39rG17hnOCbdEZE/wDkp3l8fPnuei9MrUEf8UkLEQy1RRg9nEX8uQvg
 XqkB+Vl9RbgS56XydiSYiZJwVwxolqfxke+Zb6Ud80gDmzP3+olpWTsRyr8emWTqoO
 +wVQqjsSu7U1taIhgzCcQdQB1tLc78xXVyEBk43Cf6l27hdFcpOpDMIZsPxm1GzDRJ
 tH0CbY/Tfh+M+nVIOiRz1/5ov7dkFKo3Asmh1iu3oAu5RmuUpdIhjg2SSoPa4EH+BP
 slPZEo8r1iysw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=hIZfGVN+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/3] ice: remove special
 delay after processing a GNSS read batch
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

On Thu, Dec 12, 2024 at 04:34:17PM +0100, Michal Schmidt wrote:
> I do not see a reason to have a special longer delay (100 ms) after
> passing read GNSS data to userspace.
> 
> Just use the regular GNSS polling interval (20 ms).
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>

