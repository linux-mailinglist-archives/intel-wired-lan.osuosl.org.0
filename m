Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E39A9305C2D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 13:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 354AE226E9;
	Wed, 27 Jan 2021 12:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 80hP1gSGpZK3; Wed, 27 Jan 2021 12:55:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B853A2264A;
	Wed, 27 Jan 2021 12:55:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF4211BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 12:55:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C3E78866DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 12:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LcCZb8NORnfJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 12:55:45 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from andre.telenet-ops.be (andre.telenet-ops.be [195.130.132.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 426F9866DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 12:55:44 +0000 (UTC)
Received: from ramsan.of.borg ([84.195.186.194])
 by andre.telenet-ops.be with bizsmtp
 id Moqh240014C55Sk01oqh6r; Wed, 27 Jan 2021 13:50:41 +0100
Received: from geert (helo=localhost)
 by ramsan.of.borg with local-esmtp (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1l4kHQ-0016XV-KY; Wed, 27 Jan 2021 13:50:40 +0100
Date: Wed, 27 Jan 2021 13:50:40 +0100 (CET)
From: Geert Uytterhoeven <geert@linux-m68k.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
In-Reply-To: <ff6d11dfa2a04076893105a457ca323f@intel.com>
Message-ID: <alpine.DEB.2.22.394.2101271348400.263225@ramsan.of.borg>
References: <20201228103633.11621-1-mateusz.palczewski@intel.com>
 <CAKgT0Uf-Exy1qhZYhKTe=mWf6i8L-FcaUYT0zGnyVWDq-pnfqw@mail.gmail.com>
 <BL0PR11MB35241617E21D17136107E0D187D10@BL0PR11MB3524.namprd11.prod.outlook.com>
 <CAKgT0Ue3fQY1JDsE+vxY3SscRvwQrE9YwUZ3Vva2H3Nze-ALuA@mail.gmail.com>
 <ff6d11dfa2a04076893105a457ca323f@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1221235678-1611751840=:263225"
Subject: Re: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS
 structures
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, netdev@vger.kernel.org,
 "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1221235678-1611751840=:263225
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Tue, 5 Jan 2021, Samudrala, Sridhar wrote:
> Looks like the patch that went in upstream is incorrect and it will break when working with PF drivers
> that are built without that commit. The fix proposed in this patch is also not correct as it will again break backwards
> compatibility.
>
> The OOT driver doesn't include this patch. I think the simple fix is to remove the pad field as Alex suggested.
> I think the reason we are not using flexible arrays in virtchnl is because this file is shared with other
> OSes that use C++ compilers that don't support flexible arrays.
>
> Thanks
> Sridhar
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Alexander Duyck
> Sent: Tuesday, January 5, 2021 9:43 AM
> To: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: Ciosek, NorbertX <norbertx.ciosek@intel.com>; intel-wired-lan <intel-wired-lan@lists.osuosl.org>
> Subject: Re: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS structures
>
> Hi,
>
> What you are saying doesn't make much sense. Why do you need the size
> guarantee? The padding is pointless for a variable length array so it
> shouldn't be there anyway. What I am suggesting you do is revert the
> pad and convert the key and lut to flexible array members. Then the
> size doesn't assume a size of 1 since that isn't anything that has to
> be guaranteed anyway.
>
> Also what testing are you doing to guarantee you don't break backward
> compatibility? It seems like an obvious issue that moving the lut or
> key by adding the pad should break compatibility with older builds of
> the AVF or PF drivers since you are moving the location of the key and
> table. This should result in an off-by-one indexing error. Are you
> running this with an older version of either and then verifying the
> hardware behavior is the same? My concern is that if you are building
> an AVF and a PF with the same code it will work, but if you test
> against an older version of either they will expect the old location,
> not the padded one and that will result in issues.
>
> - Alex
>
> On Tue, Jan 5, 2021 at 2:53 AM Palczewski, Mateusz
> <mateusz.palczewski@intel.com> wrote:
>>
>> Hello,
>> No, it will not break any functionality of the in-tree drivers. This patch fixes commit 65ece6de0114 ("virtchnl: Add missing explicit padding to structures") which added padding in the wrong place of both structures as key/lut fields should be at the end. Drivers code assumes that size of both is equal to 1 and allocates memory with (sizeof(virtchnl_rss_lut/virtchnl_rss_key) - 1 + (array size)). Changing lut[1]/key[1] to flexible array members lut[]/key[] is possible but this will require more changes in the drivers as compiler cannot guarantee that size of these fields will be 1. These modifications should be done in other commit.
>>
>> Regards,
>> Mateusz Palczewski
>>
>> -----Original Message-----
>> From: Alexander Duyck <alexander.duyck@gmail.com>
>> Sent: poniedziałek, 28 grudnia 2020 19:34
>> To: Palczewski, Mateusz <mateusz.palczewski@intel.com>
>> Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>; Ciosek, NorbertX <norbertx.ciosek@intel.com>
>> Subject: Re: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS structures
>>
>> On Mon, Dec 28, 2020 at 2:36 AM Mateusz Palczewski <mateusz.palczewski@intel.com> wrote:
>>>
>>> From: Norbert Ciosek <norbertx.ciosek@intel.com>
>>>
>>> Move "key" and "lut" fields at the end of RSS structures.
>>> They are arrays of size 1 used to fill in the data in dynamically
>>> allocated memory located after both structures.
>>> Previous layout could lead to unwanted compiler optimizations in loops
>>> when iterating over these arrays.
>>>
>>> Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to
>>> structures")
>>> Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
>>> ---
>>>  include/linux/avf/virtchnl.h | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/linux/avf/virtchnl.h
>>> b/include/linux/avf/virtchnl.h index ac4a1d3..44945d6 100644
>>> --- a/include/linux/avf/virtchnl.h
>>> +++ b/include/linux/avf/virtchnl.h
>>> @@ -529,8 +529,8 @@ struct virtchnl_eth_stats {  struct
>>> virtchnl_rss_key {
>>>         u16 vsi_id;
>>>         u16 key_len;
>>> -       u8 key[1];         /* RSS hash key, packed bytes */
>>>         u8 pad[1];
>>> +       u8 key[1];         /* RSS hash key, packed bytes */

If you use a flexible array member, it should be declared without a
size, i.e.

     u8 key[];

Everything else is (trying to) fool the compiler, and leading to
undefined behavior.

>>>  };
>>>
>>>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key); @@ -538,8 +538,8 @@
>>> VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);  struct
>>> virtchnl_rss_lut {
>>>         u16 vsi_id;
>>>         u16 lut_entries;
>>> -       u8 lut[1];        /* RSS lookup table */
>>>         u8 pad[1];
>>> +       u8 lut[1];        /* RSS lookup table */
>>>  };
>>>
>>>  VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
>>
>> This makes absolutely no sense. Isn't it going to break compatibility with existing devices that already have the old definitions? If the key and lut are meant to be dynamically allocated it doesn't make sense to have it size 1. Defining them with a length of 1 is incorrect for how these are handled in the kernel. It just looks wrong as my first instinct was to ask about why you would define an array of size 1? You should be defining the key and lut without size, so "key[]" and "lut[]". That is how we define dynamically allocated fields at the end of structure.
>>
>> If the lut and key are supposed to be dynamically allocated you shouldn't have the pad at all. You should remove it from the structures in question.
>> ---------------------------------------------------------------------
>> Intel Technology Poland sp. z o.o.
>> ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
>> Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
>> This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
>>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> ???/C??Sߝ?߭???v
--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds
--8323329-1221235678-1611751840=:263225
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--8323329-1221235678-1611751840=:263225--
