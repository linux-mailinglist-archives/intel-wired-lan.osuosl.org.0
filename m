Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F018E82D446
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jan 2024 07:45:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47F714176A;
	Mon, 15 Jan 2024 06:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47F714176A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705301128;
	bh=ZtFz1gcUiPXB8OrKKee5knzgppy0DEspSIeFwMMfDXo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KmLH+k1BuWn/gj7QXup2Bl/kIYdunD0Fh5v+dsC2cKgFKI3YxVfLpByy9QBQcrx8I
	 98AZwqqtrup6rXnSxKbRdEEHYA1L+CpyeXw+urzGxDITL7Vc2C5zcgqzxr/6IaLUAu
	 3hl/wYHQ++MyfmsMOlFY/YVkl29B9FGCqs30emg7KxAlvupmzplNEAU/s7J3CuPx2D
	 J74xldeTPEG794aLjqrRft2Yj1xP8CUl/tfRnqZVPyi3TQ5r+0xfplt479YTNbf34q
	 QaRaocxiFa35BVdHUf5tWVqn9aTsDOwC+LS9hwy6uJFGgvgJO9Oh0Ph4BcGp8eK0kc
	 +ofKdOyXeERvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OM2FaBlzgx2i; Mon, 15 Jan 2024 06:45:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0816C4030C;
	Mon, 15 Jan 2024 06:45:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0816C4030C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D87AE1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 06:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A925E813E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 06:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A925E813E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1DrDyWK0acv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jan 2024 06:45:20 +0000 (UTC)
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn [124.126.103.232])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 30006813BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jan 2024 06:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30006813BA
X-UUID: 4c51953df3a6467e910868bb4a01e662-20240115
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.35, REQID:01acb116-89e3-42da-9916-1ce7e2a7c975, IP:10,
 URL:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTI
 ON:release,TS:-5
X-CID-INFO: VERSION:1.1.35, REQID:01acb116-89e3-42da-9916-1ce7e2a7c975, IP:10,
 UR
 L:0,TC:0,Content:0,EDM:0,RT:0,SF:-15,FILE:0,BULK:0,RULE:Release_Ham,ACTION
 :release,TS:-5
X-CID-META: VersionHash:5d391d7, CLOUDID:c1ad418e-e2c0-40b0-a8fe-7c7e47299109,
 B
 ulkID:240112214822WA9UL4OY,BulkQuantity:6,Recheck:0,SF:44|64|66|24|17|19|1
 02,TC:nil,Content:0,EDM:-3,IP:-2,URL:1,File:nil,Bulk:40,QS:nil,BEC:nil,COL
 :0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FSI, TF_CID_SPAM_ULS, TF_CID_SPAM_SNR,
 TF_CID_SPAM_FAS, TF_CID_SPAM_FSD
X-UUID: 4c51953df3a6467e910868bb4a01e662-20240115
Received: from mail.kylinos.cn [(39.156.73.10)] by mailgw
 (envelope-from <chentao@kylinos.cn>) (Generic MTA)
 with ESMTP id 1482343332; Mon, 15 Jan 2024 14:38:13 +0800
Received: from mail.kylinos.cn (localhost [127.0.0.1])
 by mail.kylinos.cn (NSMail) with SMTP id 17269E000EBA;
 Mon, 15 Jan 2024 14:38:13 +0800 (CST)
X-ns-mid: postfix-65A4D2D4-971834282
Received: from [172.20.15.234] (unknown [172.20.15.234])
 by mail.kylinos.cn (NSMail) with ESMTPA id 44150E000EB9;
 Mon, 15 Jan 2024 14:38:10 +0800 (CST)
Message-ID: <50f1e711-12a2-432a-b571-c7b4f0e64ab1@kylinos.cn>
Date: Mon, 15 Jan 2024 14:38:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20240112025853.123048-1-chentao@kylinos.cn>
 <2a58fed3-1fa9-47eb-b475-3f7c3b291376@molgen.mpg.de>
From: Kunwu Chan <chentao@kylinos.cn>
In-Reply-To: <2a58fed3-1fa9-47eb-b475-3f7c3b291376@molgen.mpg.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: Fix string truncation
 warnings in igb_set_fw_version
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
Cc: Kunwu Chan <kunwu.chan@hotmail.com>, przemyslaw.kitszel@intel.com,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,
Thanks for your reply.

On 2024/1/12 21:46, Paul Menzel wrote:
> Dear Kunwu,
>=20
>=20
> Thank you for your patch. I have some minor nits.
>=20
> Am 12.01.24 um 03:58 schrieb Kunwu Chan:
>> 'commit 1978d3ead82c ("intel: fix string truncation warnings")'
>=20
> Please don=E2=80=99t enclose it in '': Commit 1978d3ead82c ("intel: fix=
 string=20
> truncation warnings")
>=20
>> fix '-Wformat-truncation=3D' warnings in igb_main.c by using kasprintf=
.
>=20
> fix*es*

Thanks i'll rewirte the commit msg and add some warnings.
>=20
>> kasprintf() returns a pointer to dynamically allocated memory
>> which can be NULL upon failure.
>=20
> Maybe paste one warning message.

Thanks again.
>=20
>> Fix this warning by using a larger space for adapter->fw_version,
>> and then fall back and continue to use snprintf.
>>
>> Fixes: 1978d3ead82c ("intel: fix string truncation warnings")
>> Signed-off-by: Kunwu Chan <chentao@kylinos.cn>
>> Cc: Kunwu Chan <kunwu.chan@hotmail.com>
>> Suggested-by: Jakub Kicinski <kuba@kernel.org>
>=20
>=20
> Kind regards,
>=20
> Paul Menzel
>=20
>=20
>> ---
>> v2: Fall back to use snprintf and a larger space,as suggested by
>> https://lore.kernel.org/all/20231212132637.1b0fb8aa@kernel.org/
>> ---
>> =C2=A0 drivers/net/ethernet/intel/igb/igb.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 2 +-
>> =C2=A0 drivers/net/ethernet/intel/igb/igb_main.c | 35 ++++++++++++----=
-------
>> =C2=A0 2 files changed, 19 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igb/igb.h=20
>> b/drivers/net/ethernet/intel/igb/igb.h
>> index a2b759531cb7..3c2dc7bdebb5 100644
>> --- a/drivers/net/ethernet/intel/igb/igb.h
>> +++ b/drivers/net/ethernet/intel/igb/igb.h
>> @@ -637,7 +637,7 @@ struct igb_adapter {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct timespec=
64 period;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } perout[IGB_N_PEROUT];
>> -=C2=A0=C2=A0=C2=A0 char fw_version[32];
>> +=C2=A0=C2=A0=C2=A0 char fw_version[48];
>> =C2=A0 #ifdef CONFIG_IGB_HWMON
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct hwmon_buff *igb_hwmon_buff;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool ets;
>> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c=20
>> b/drivers/net/ethernet/intel/igb/igb_main.c
>> index b2295caa2f0a..ce762d77d2c1 100644
>> --- a/drivers/net/ethernet/intel/igb/igb_main.c
>> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
>> @@ -3069,7 +3069,6 @@ void igb_set_fw_version(struct igb_adapter=20
>> *adapter)
>> =C2=A0 {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct e1000_hw *hw =3D &adapter->hw;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct e1000_fw_version fw;
>> -=C2=A0=C2=A0=C2=A0 char *lbuf;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 igb_get_fw_version(hw, &fw);
>> @@ -3077,34 +3076,36 @@ void igb_set_fw_version(struct igb_adapter=20
>> *adapter)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case e1000_i210:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 case e1000_i211:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!(igb_get_f=
lash_presence_i210(hw))) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lb=
uf =3D kasprintf(GFP_KERNEL, "%2d.%2d-%d",
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.invm_major, fw.inv=
m_minor,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.invm_img_type);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sn=
printf(adapter->fw_version,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sizeof(adapter->fw_version),
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 "%2d.%2d-%d",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.invm_major, fw.invm_minor,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.invm_img_type);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fallthrough;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default:
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* if option ro=
m is valid, display its version too */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (fw.or_valid=
) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lb=
uf =3D kasprintf(GFP_KERNEL, "%d.%d, 0x%08x, %d.%d.%d",
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_major, fw.eep_=
minor,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.etrack_id, fw.or_m=
ajor, fw.or_build,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.or_patch);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sn=
printf(adapter->fw_version,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sizeof(adapter->fw_version),
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 "%d.%d, 0x%08x, %d.%d.%d",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_major, fw.eep_minor, fw.etrack_id,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.or_major, fw.or_build, fw.or_patch);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* no option ro=
m */
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if (fw.e=
track_id !=3D 0X0000) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lb=
uf =3D kasprintf(GFP_KERNEL, "%d.%d, 0x%08x",
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_major, fw.eep_=
minor,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.etrack_id);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sn=
printf(adapter->fw_version,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sizeof(adapter->fw_version),
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 "%d.%d, 0x%08x",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_major, fw.eep_minor, fw.etrack_id);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lb=
uf =3D kasprintf(GFP_KERNEL, "%d.%d.%d", fw.eep_major,
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_minor, fw.eep_=
build);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sn=
printf(adapter->fw_version,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 sizeof(adapter->fw_version),
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 "%d.%d.%d",
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 fw.eep_major, fw.eep_minor, fw.eep_build);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> -
>> -=C2=A0=C2=A0=C2=A0 /* the truncate happens here if it doesn't fit */
>> -=C2=A0=C2=A0=C2=A0 strscpy(adapter->fw_version, lbuf, sizeof(adapter-=
>fw_version));
>> -=C2=A0=C2=A0=C2=A0 kfree(lbuf);
>> =C2=A0 }
>> =C2=A0 /**
--=20
Thanks,
   Kunwu

