Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 350DE77D81B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 04:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 650396120E;
	Wed, 16 Aug 2023 02:06:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 650396120E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692151613;
	bh=Lvh0foQOJudQ2FwIAJC0e3rdJNgaxaCaazn2Gc3Xhgc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BknxHzzzC1gQAkV4LlMWz4ml//hh5CS5bl5uIQnitiNhx4s4hSGiZjjPhl9eB3RQ4
	 ouI80xxD8tb5gI3itwauc6ui7kZrT/qLPix8FliUnFMPvtmxP36zvbIX5dCc4XRH0g
	 LbDkqX62hP3ik9zAJEh9owdc+QGL01WoZ6sWPgei3AYEl9Fq37xY5EWmB+XAmmbcbM
	 oFjW54UziFL4StiUv8+seDtDfXE7nWykVQd04AtMTA9FvypanHXETBh2j+8nR9m7j/
	 O9Df6MntTZhFe/LrOxDPoE6132VrtwIoXM8NZlWDS/uV8D5vS1L1cfYI3d4I99jIq2
	 BPTjMGnChVhsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a6VrbtusSKPO; Wed, 16 Aug 2023 02:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7569461209;
	Wed, 16 Aug 2023 02:06:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7569461209
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 16B171BF427
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DD01A41BB0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD01A41BB0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NSWG82llms6m for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 02:06:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C150141BAA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 02:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C150141BAA
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AAB7B61730;
 Wed, 16 Aug 2023 02:06:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C94CBC433C8;
 Wed, 16 Aug 2023 02:06:43 +0000 (UTC)
Date: Tue, 15 Aug 2023 19:06:42 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20230815190642.315fa2af@kernel.org>
In-Reply-To: <2ef66ad0-d8d2-ae28-9624-04a3fbe94de4@intel.com>
References: <20230814135821.4808-1-yuehaibing@huawei.com>
 <2ef66ad0-d8d2-ae28-9624-04a3fbe94de4@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692151604;
 bh=CGNr34szINxLhBzT8NdUd8WHz2+azRMk174GL2+Z4hE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e9Ntgg0olOvNh+a5uKYokd8H7stTFDGNz/3BiOmxBZLfGP1z8fOCYBQoUocGIhiqh
 n4Y14Qujq4xkSJs3aBQAQD9g1rj2O5IBL6KIHgD/UuKMY26fLuaCGIaoLAxRJ1qrWV
 DMiQdxuvV86nTaenT5hVNE89q1pWsRqt5D+CNRsHDNwsrv2mhbUSpeXp8wS+hr4XBt
 YMfwFthRPru5Z2tfNOh11eFN2GjLy13PyUZgzOCWL+MJexHUO3ZGmv0bs1jlAaDXJ1
 24GWtneX/VSEnvCyaEBBkmdGZ3E1xvsJEokwQq5EzKKd6f9p00VEoYv/zUJlj+jQms
 5qv0LL5BWo9sQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=e9Ntgg0o
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e1000e: Remove unused
 declarations
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
Cc: netdev@vger.kernel.org, Yue Haibing <yuehaibing@huawei.com>,
 jesse.brandeburg@intel.com, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 14 Aug 2023 15:19:10 -0700 Tony Nguyen wrote:
> On 8/14/2023 6:58 AM, Yue Haibing wrote:
> > Commit bdfe2da6aefd ("e1000e: cosmetic move of function prototypes to the new mac.h")
> > declared but never implemented them.
> > 
> > Signed-off-by: Yue Haibing <yuehaibing@huawei.com>  
> 
> I believe netdev has been taking all these unused declaration patches 
> directly so...
> 
> Reviewed-by: Tony Nguyen <anthony.l.nguyen@intel.com>

Thanks! We do have a bit of a mixed record either applying these 
or deferring to maintainers...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
