Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA1426E55B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 21:41:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2E2C8677B;
	Thu, 17 Sep 2020 19:41:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EtQNtLeQp1uS; Thu, 17 Sep 2020 19:41:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3122687038;
	Thu, 17 Sep 2020 19:41:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF2481BF302
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 19:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CA0CE8677B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 19:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1qzDav6SqieK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 19:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 21D1186B8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 19:40:18 +0000 (UTC)
IronPort-SDR: /u/Mk8nF3UgtT8HPV1HmK8rlxorgTd3PbTQvEwqFF72kFvjGesIt7ajqTBAVftXVuoPrDBZXJh
 Xp7K/vAog4VA==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="157177256"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="157177256"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:40:16 -0700
IronPort-SDR: OJtaUmUU2VRk9KtKnU2JOdZ0Wx6lNOu+0+CFBjlBeB4odozE5Gxp9wTpGmmaUJi2k6Nfsj2iiR
 1ryN5FpIrCvQ==
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; d="scan'208";a="483882946"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.151.155])
 ([10.212.151.155])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 12:40:13 -0700
To: Keith Busch <kbusch@kernel.org>, Joe Perches <joe@perches.com>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
 <20200909205558.GA3384631@dhcp-10-100-145-180.wdl.wdc.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <321069c8-a4c1-56ff-49fb-4c2bce1e6352@intel.com>
Date: Thu, 17 Sep 2020 12:40:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200909205558.GA3384631@dhcp-10-100-145-180.wdl.wdc.com>
Content-Language: en-US
X-Mailman-Approved-At: Thu, 17 Sep 2020 19:41:23 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
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
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 sparclinux@vger.kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-rtc@vger.kernel.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, dccp@vger.kernel.org, linux-rdma@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, linux-afs@lists.infradead.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-mmc@vger.kernel.org, Kees Cook <kees.cook@canonical.com>,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-nvme@lists.infradead.org,
 storagedev@microchip.com, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 Jiri Kosina <trivial@kernel.org>, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, iommu@lists.linux-foundation.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 9/9/2020 1:55 PM, Keith Busch wrote:
> On Wed, Sep 09, 2020 at 01:06:39PM -0700, Joe Perches wrote:
>> diff --git a/crypto/tcrypt.c b/crypto/tcrypt.c
>> index eea0f453cfb6..8aac5bc60f4c 100644
>> --- a/crypto/tcrypt.c
>> +++ b/crypto/tcrypt.c
>> @@ -2464,7 +2464,7 @@ static int do_test(const char *alg, u32 type, u32 mask, int m, u32 num_mb)
>>  		test_hash_speed("streebog512", sec,
>>  				generic_hash_speed_template);
>>  		if (mode > 300 && mode < 400) break;
>> -		fallthrough;
>> +		break;
>>  	case 399:
>>  		break;
> 
> Just imho, this change makes the preceding 'if' look even more
> pointless. Maybe the fallthrough was a deliberate choice? Not that my
> opinion matters here as I don't know this module, but it looked a bit
> odd to me.
> 

Yea this does look very odd..
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
