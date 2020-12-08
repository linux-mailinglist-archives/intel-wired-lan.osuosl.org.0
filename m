Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD7A2D2EE7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 16:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CAF9287146;
	Tue,  8 Dec 2020 15:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q3SA0S0lc34D; Tue,  8 Dec 2020 15:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F182786BEF;
	Tue,  8 Dec 2020 15:59:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4CA871BF23B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 15:59:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4734886FCE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 15:59:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xQIMjIqNkYMy for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 15:59:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1515B8684E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 15:59:33 +0000 (UTC)
Received: from [192.168.0.3] (ip5f5af449.dynamic.kabel-deutschland.de
 [95.90.244.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id F2FCF20647D89;
 Tue,  8 Dec 2020 16:59:30 +0100 (CET)
To: Radoslaw Tyl <radoslawx.tyl@intel.com>
References: <20201208175343.454313-1-radoslawx.tyl@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2af6e454-b45c-c1f7-6ea0-86806c0a8c38@molgen.mpg.de>
Date: Tue, 8 Dec 2020 16:59:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201208175343.454313-1-radoslawx.tyl@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: aggregate of all receive
 errors through netdev's rx_errors
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
Cc: intel-wired-lan@lists.osuosl.org, piotrx.skajewski@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Radoslaw,


Am 08.12.20 um 18:53 schrieb Radoslaw Tyl:

Your patch is also from the future. Some timing problem at Intel offices 
in Poland? ;-)


Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
