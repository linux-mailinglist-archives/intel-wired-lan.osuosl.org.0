Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3CD4DCC43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 18:20:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7ADAB60BA9;
	Thu, 17 Mar 2022 17:20:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qwQXJ0XPTNhY; Thu, 17 Mar 2022 17:20:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A114760A8B;
	Thu, 17 Mar 2022 17:20:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C45A41BF228
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:18:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B1DDE60A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u34EY30MGjDk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 17:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6462B60808
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 17:18:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 5C40DB81F74;
 Thu, 17 Mar 2022 17:18:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52A97C340E9;
 Thu, 17 Mar 2022 17:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647537494;
 bh=gmPj8tLBxANwV846Fhvdd0rmUuDoh/mRcbiut7QM9Ss=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CVgp0kbMz1h1KrD5hIHkeZqE3dbfyHGiiKlm1nDf7zJKgD+L6T7lv1EnBfOZ5FjIB
 9niQBOn5hX96SQTfjiDZPD8o00OQoJa9T/0HRSfSSLO0TYEPj71wsvmzA8sCFNyNt8
 iI+HBytVQKg8V5HXgwYs6u6B/FRWL156LQHN5MyNj+7qP8mclK79nn+B+IuJTPbXLF
 iC62gFVoX2PZbrwBF8xJ+6U7tK+BjclarKJPvpSB7PoqhyN8LvfCU26s9RlSokMS5B
 uuQmSFWXHAxxrrs6+a/p2y7vHDRrvQf6aPpkhoXoFY/66PRsXc+x/RURh/H7R4dsAc
 ork/FmZfLoeqw==
Date: Thu, 17 Mar 2022 10:18:04 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220317101804.3c4d2a70@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <cc7a09c1-8e1f-bb72-c9f1-354bec9dec18@intel.com>
References: <20220317104524.2802848-1-ivecera@redhat.com>
 <20220317091104.1d911864@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <cc7a09c1-8e1f-bb72-c9f1-354bec9dec18@intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 17 Mar 2022 17:20:22 +0000
Subject: Re: [Intel-wired-lan] [PATCH] iavf: Fix hang during reboot/shutdown
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
Cc: Ivan Vecera <ivecera@redhat.com>, Slawomir Laba <slawomirx.laba@intel.com>,
 netdev@vger.kernel.org,
 "moderated list:INTEL ETHERNET DRIVERS\" <intel-wired-lan@lists.osuosl.org>,
 open list  <linux-kernel@vger.kernel.org>"@osuosl.org, poros@redhat.com,
 Mateusz Palczewski <mateusz.palczewski@intel.com>,
 Phani Burra <phani.r.burra@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 "David  S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 17 Mar 2022 10:03:05 -0700 Tony Nguyen wrote:
> There are some additional improvements that we think can be made but we 
> need more time to analyze and test. This is probably good for you to 
> take to make into this kernel though. We will send follow on patches if 
> needed.

Sounds good, thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
