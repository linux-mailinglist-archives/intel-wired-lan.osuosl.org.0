Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2AC479390
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Dec 2021 19:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E79F40C12;
	Fri, 17 Dec 2021 18:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mrgLBJw-nlQW; Fri, 17 Dec 2021 18:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D7803400CE;
	Fri, 17 Dec 2021 18:08:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 198271BF44A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 22:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 092C040A86
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 22:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8kIc51x3hs32 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 22:35:02 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.8.0
Received: from novek.ru (novek.ru [213.148.174.62])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C013040A75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 22:35:01 +0000 (UTC)
Received: from [192.168.0.18] (unknown [37.228.234.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by novek.ru (Postfix) with ESMTPSA id 3B79D500BEE;
 Thu, 16 Dec 2021 01:22:56 +0300 (MSK)
DKIM-Filter: OpenDKIM Filter v2.11.0 novek.ru 3B79D500BEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=novek.ru; s=mail;
 t=1639606979; bh=YkDbJkp27QqRkjGNY8MALJg6qOp+4IEyT1J+LvT8rrc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=JfKble2SnD0FLtu/Tyno4t6cDZ+Fg4afY/Z+RSlQQAOFpA5TnSQnnOEzlKZLPsGuV
 mRAC1Yh11FIABB4TqJFyXVV0TxZ7i4gOjXg8kfbNMxT8t/5cGKkolb5vnnSvGglFtu
 IvSlbF2oDHsuiJ0/vV14pdMs5sH6ywc28Zl14GSM=
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "Machnikowski, Maciej" <maciej.machnikowski@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
References: <20211210134550.1195182-1-maciej.machnikowski@intel.com>
 <20211210081654.233a41b6@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <MW5PR11MB58126A8F6466A8EAD1293D5EEA749@MW5PR11MB5812.namprd11.prod.outlook.com>
 <DM6PR11MB4657CE134223B65B5F2EF5F29B769@DM6PR11MB4657.namprd11.prod.outlook.com>
From: Vadim Fedorenko <vfedorenko@novek.ru>
Message-ID: <4d4f5c27-90a3-c411-ea2f-e6f44ec74148@novek.ru>
Date: Wed, 15 Dec 2021 22:27:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <DM6PR11MB4657CE134223B65B5F2EF5F29B769@DM6PR11MB4657.namprd11.prod.outlook.com>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 17 Dec 2021 18:08:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 0/4] Add ethtool interface
 for RClocks
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>,
 "petrm@nvidia.com" <petrm@nvidia.com>, "Byagowi, Ahmad" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 15.12.2021 12:14, Kubalewski, Arkadiusz wrote:
>> -----Original Message-----
>> From: Machnikowski, Maciej <maciej.machnikowski@intel.com>
>> Sent: poniedzia=B3ek, 13 grudnia 2021 09:54
>> To: Jakub Kicinski <kuba@kernel.org>
>> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Kubalewski=
, Arkadiusz <arkadiusz.kubalewski@intel.com>; richardcochran@gmail.com; Bya=
gowi, Ahmad <abyagowi@fb.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.co=
m>; davem@davemloft.net; linux-kselftest@vger.kernel.org; idosch@idosch.org=
; mkubecek@suse.cz; saeed@kernel.org; michael.chan@broadcom.com; petrm@nvid=
ia.com; Vadim Fedorenko <vfedorenko@novek.ru>
>> Subject: RE: [PATCH v5 net-next 0/4] Add ethtool interface for RClocks
>>
>>> -----Original Message-----
>>> From: Jakub Kicinski <kuba@kernel.org>
>>> Sent: Friday, December 10, 2021 5:17 PM
>>> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
>>> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org;
>>> Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>;
>>> richardcochran@gmail.com; Byagowi, Ahmad <abyagowi@fb.com>; Nguyen,
>>> Anthony L <anthony.l.nguyen@intel.com>; davem@davemloft.net; linux-
>>> kselftest@vger.kernel.org; idosch@idosch.org; mkubecek@suse.cz;
>>> saeed@kernel.org; michael.chan@broadcom.com; petrm@nvidia.com; Vadim
>>> Fedorenko <vfedorenko@novek.ru>
>>> Subject: Re: [PATCH v5 net-next 0/4] Add ethtool interface for RClocks
>>>
>>> On Fri, 10 Dec 2021 14:45:46 +0100 Maciej Machnikowski wrote:
>>>> Synchronous Ethernet networks use a physical layer clock to
>>>> syntonize the frequency across different network elements.
>>>>
>>>> Basic SyncE node defined in the ITU-T G.8264 consist of an Ethernet
>>>> Equipment Clock (EEC) and have the ability to synchronize to
>>>> reference frequency sources.
>>>>
>>>> This patch series is a prerequisite for EEC object and adds ability
>>>> to enable recovered clocks in the physical layer of the netdev object.
>>>> Recovered clocks can be used as one of the reference signal by the EEC.
>>>>
>>>> Further work is required to add the DPLL subsystem, link it to the
>>>> netdev object and create API to read the EEC DPLL state.
>>>
>>> You missed CCing Vadim. I guess Ccing the right people may be right up
>>> there with naming things as the hardest things in SW development..
>>>
>>> Anyway, Vadim - do you have an ETA on the first chunk of the PLL work?
>>
>> Sounds about right :) thanks for adding Vadim!
>>
> =

> Good day Vadim,
> =

> Can we help on the new PLL interfaces?
> I can start some works related to that, although would need a guidance
> from the expert.
> Where to place it?
> What in-kernel interfaces to use?
> Any other high level tips that could be useful?
> Or if you already started some work, could you please share some
> information?
> =

Hi!

I'm going to publish RFC till the end of the week and we will be able to
continue discussion via this mailing list. I think that netlink is a good
option for in-kernel interface and is easy to implement.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
