Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96122629D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2019 12:59:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3DDF87B3C;
	Wed, 22 May 2019 10:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZnWWEsrwPhI7; Wed, 22 May 2019 10:59:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5934687D05;
	Wed, 22 May 2019 10:58:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CE7141BF295
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 10:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8F4283C12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 10:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FRpSyhw7IZAa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2019 10:58:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B96686F9E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 10:58:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 03:58:56 -0700
X-ExtLoop1: 1
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.185.23.132])
 ([10.185.23.132])
 by orsmga005.jf.intel.com with ESMTP; 22 May 2019 03:58:55 -0700
To: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
References: <1623942.pXzBnfQ100@rocinante.m.i2n>
 <d308eb17-98ab-13e7-6c74-d701288e43b5@intel.com>
 <3878056.TXPIU5uV5l@rocinante.m.i2n>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <56e233f9-0a50-56f4-c256-38909cfa165b@intel.com>
Date: Wed, 22 May 2019 13:58:54 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.3
MIME-Version: 1.0
In-Reply-To: <3878056.TXPIU5uV5l@rocinante.m.i2n>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Work around hardware unit
 hang by disabling TSO
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
Cc: thomas.jarosch@intra2net.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/21/2019 18:42, Juliana Rodrigueiro wrote:
> So I ask myself, how actually feasible is it to gamble the usage of "ethtool"
> to turn on or off TSO every time the network configuration changes?
Hello Juliana,
There are many PCH2 devices with different SKU's.  Not all devices have 
this problem (Tx hand). We do not want to set disabling TSO as the 
default version. Let's keep this option for all other users.
Also, this is very old known HW bug - unfortunately we didn't fixed it. 
Our more new devices have not this problem.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
