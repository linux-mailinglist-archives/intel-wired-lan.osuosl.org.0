Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D09926A63A8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Mar 2023 00:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70EC960B49;
	Tue, 28 Feb 2023 23:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70EC960B49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677625641;
	bh=kuyFEkkWbnA8s5QBmKM0cw20Nq4u3pwJqNIWnD0v7y8=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=igIM2o0hVfWTi4b5UaVGhZF4I7dAMJLScguZOEKV+ZBRMBDQs21my88BJdyDjWDFL
	 B1F+nODe/7lw9R4nasrAckvIIievQn14q6Ax8J4ZfQFIuqz6ghsu3cfPuNAkwgvpVb
	 kpIV/cdSezGQyVHsmgqRFXef2tUuZVFGOqgSYYAXzj4OH9pFixJ+yNOnz3h8C19LSm
	 IzOSh5EmR+CKdPoqGq6hSrNrnH4Cr0rrbMHwy8RCrgSdZfD/Tr9+waNwJazPc1IxlJ
	 41wr4tUC87eqpn81usH6150f5Xn5d/XkOInU+5DvLZ6og3gu6veC0zOrHkVr3sk9WH
	 0HjIY8LOfv6jQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHBkZY4hRC1o; Tue, 28 Feb 2023 23:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 568BB60B2C;
	Tue, 28 Feb 2023 23:07:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 568BB60B2C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 283A81BF383
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 23:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F16B060B2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 23:07:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F16B060B2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id us2xuWeL-9jm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Feb 2023 23:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AECA60B1B
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5AECA60B1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Feb 2023 23:07:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9DE05611F4;
 Tue, 28 Feb 2023 23:07:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DEBFC433EF;
 Tue, 28 Feb 2023 23:07:12 +0000 (UTC)
Date: Tue, 28 Feb 2023 15:07:11 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20230228150711.1291793e@kernel.org>
In-Reply-To: <f45c1cbf-3dc1-5075-feea-1613b059bf71@intel.com>
References: <20230228164613.1360409-1-aleksander.lobakin@intel.com>
 <20230228164613.1360409-3-aleksander.lobakin@intel.com>
 <f45c1cbf-3dc1-5075-feea-1613b059bf71@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1677625633;
 bh=54yKfDrAPw/6BH2MmunSbRxmmEf0zhqVZNQurNFOM9o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YVVp9SCHyr82zKH5Wg3y4c2V4vQJncgdT0bO7yiCrLP0+4mQl17a794PFOQ+eEvzG
 fzyFl5I0rxz9XwCEXwANTIyvqlmflXp8XCYqYDOaE5+L2jE/uoqOTsdj8I/JO80wei
 VNbxh3OpO+1KZpZbpnH3wzfAdq0/B1e67/q+K/CYtaruDPSjGdbrJzuVrxoQo1d2zk
 VCckT7lS+jx60KRWO9qiZy++RSyuZkOzxg82UY31+8Ehky6OoqmMgdRW+zhRaaKGF1
 tPvJUz4XtpzYOGOorAXz0K426yO4OXVCIKPkvguBJ4DHyFniCcrQrPEjQrHz7COZv7
 Mx4Xi1Y1zsLJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YVVp9SCH
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] iavf: fix non-tunneled
 IPv6 UDP packet type and hashing
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 Feb 2023 17:52:56 +0100 Alexander Lobakin wrote:
> > [PATCH net v2 2/2] iavf: fix non-tunneled IPv6 UDP packet type and hashing
> > v2  
> 
> How this got here ._.
> Lemme know if I should resend (it's probably okay for Git, but may broke
> Patchwork, dunno).

Also patch 1 is not versioned and patch 2 is v2 :S

I think repost would be good, and please put on the To: line the
person/group who you expect to apply the patch - either netdev
maintainers or Tony.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
