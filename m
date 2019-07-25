Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E493754F4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:00:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1E34186448;
	Thu, 25 Jul 2019 17:00:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AUj4rQZx0Ty; Thu, 25 Jul 2019 17:00:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCD3C86475;
	Thu, 25 Jul 2019 17:00:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5ED1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4C3B622253
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hYiLnz3zDtot for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id C85072037C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:00:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="345497434"
Received: from klaatz-mobl1.ger.corp.intel.com (HELO [10.237.221.70])
 ([10.237.221.70])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2019 10:00:28 -0700
To: Maxim Mikityanskiy <maximmi@mellanox.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190724051043.14348-9-kevin.laatz@intel.com>
 <fd7b6b71-5bfd-986a-b288-b9e3478acebb@mellanox.com>
From: "Laatz, Kevin" <kevin.laatz@intel.com>
Message-ID: <27c5c008-def3-d9dc-792c-e5a500103be8@intel.com>
Date: Thu, 25 Jul 2019 18:00:27 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <fd7b6b71-5bfd-986a-b288-b9e3478acebb@mellanox.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 08/11] samples/bpf: add
 unaligned chunks mode support to xdpsock
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
Cc: "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "daniel@iogearbox.net" <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loftus,
 Ciara" <ciara.loftus@intel.com>, "ast@kernel.org" <ast@kernel.org>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "Richardson,
 Bruce" <bruce.richardson@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Topel,
 Bjorn" <bjorn.topel@intel.com>, "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 25/07/2019 10:43, Maxim Mikityanskiy wrote:
> On 2019-07-24 08:10, Kevin Laatz wrote:
>> This patch adds support for the unaligned chunks mode. The addition of the
>> unaligned chunks option will allow users to run the application with more
>> relaxed chunk placement in the XDP umem.
>>
>> Unaligned chunks mode can be used with the '-u' or '--unaligned' command
>> line options.
>>
>> Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
>> Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
>> ---
>>    samples/bpf/xdpsock_user.c | 17 +++++++++++++++--
>>    1 file changed, 15 insertions(+), 2 deletions(-)
> <...>
>
>> @@ -372,6 +378,7 @@ static void usage(const char *prog)
>>    		"  -z, --zero-copy      Force zero-copy mode.\n"
>>    		"  -c, --copy           Force copy mode.\n"
>>    		"  -f, --frame-size=n   Set the frame size (must be a power of two, default is %d).\n"
> Help text for -f has to be updated, it doesn't have to be a power of two
> if -u is specified.

Will fix in the v4, thanks!



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
