Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DED896B60C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Sep 2024 11:09:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AFAF581131;
	Wed,  4 Sep 2024 09:09:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r62279PvPZZt; Wed,  4 Sep 2024 09:09:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BD2A081134
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725440958;
	bh=9EFpreMLM+kWXL5MbjZf2rv6raDzxzw8jIoRVnPBHRk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wv5kTKi8qz/DAOrJCToIV+nQQRc0umTSYTVs5dWcr8fRUsVOA8kSmSwWbZyWdwSE0
	 hRkLl/PCmakYPgwkoZZLNFuGnunMBpkkAZMz1Nfdo9tzOVvsP7+s5s8ywLmNO8Xn27
	 kd8lZHVEuSJpEi/pWxnS6hSrFDKqzuHN04YgNfcm9SlMjwn1fGl1wTV/rwBfXkE/4R
	 602N7rY/RwiB2Cm+vbM/PMHhNE9MWx4sGmTK3KiPqZiBTyvOxWst9qxFO15KLd97si
	 oRGTkf9Vt3RzfpB9hi5loNK9ARRUXlR3CHinYNxQeBfgn3Wfa9iNgRW7RwMfTPM+73
	 uH/NPzYgQTb4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD2A081134;
	Wed,  4 Sep 2024 09:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12FB11BF577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F375A4031F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfvjEZ4PZr59 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Sep 2024 09:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DED354047B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DED354047B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DED354047B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Sep 2024 09:09:14 +0000 (UTC)
X-CSE-ConnectionGUID: pH4FyqbcSuKyjHxS7p0gZQ==
X-CSE-MsgGUID: cpyrjkNoSNqY5vr8sMh1Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="23965063"
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="23965063"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 02:09:14 -0700
X-CSE-ConnectionGUID: gzzVtFLmS5GY5FqYZJDUHw==
X-CSE-MsgGUID: 61a+enuLRQ6z8MhOFuzHfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,201,1719903600"; d="scan'208";a="88447822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 02:09:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 02:09:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 02:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mxg9DZkw2a3u0i8DyMAu8lQlFXVZ+GXbuJH1u+ubrDTAky5fA81jO/YQxVTIHJBdUqV6UDzoi4nOqOKzFPlrtfSli7OMCNMNnCzc+mupqC/d062hr6i4/VZ/VQAYGDHiTbavvDV6UFU5bpjBHZCnGukwpqijsxCYqJBfeJdrwcFeIwVBOV+4u1iQvbu5nvzAgqIGVB5Cd2dKi+582KsJNNSPQ0mnEzEC+qtG1Y1dGCWdTtGmfe4S/6JjoyG8wYfXTwfP2KuzseH476slvMC+8b/r3LrCcqOvuRxcjynNK1sS+TpvAtWPydKfNqpkmG104bzc2TlI2EbpeQjKgy9sWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9EFpreMLM+kWXL5MbjZf2rv6raDzxzw8jIoRVnPBHRk=;
 b=DpsMo4DJZeKhI+PWLD5noe4nZCMsrQhOvV8R/ymES9sqd7+WV9TZlZ0G20b4IXL807frjJkN53i9K0dfLbFsN0YqIVlLybd13YdyxaaI/vYJ++J+kQrxIoKq8NfsIAFkhFffucwJbgBzDEsDOjRJjzhvxvdG0t9hMvaFK3lo58FwVzURUFqnc8KbK6zRy5ItaZJUJv33GyfZA+EJrAOylpel0YiY15qvaQtFu/LKZ2+dbYPjaPc3Vf/LpvUEkftfzkog4V1Vz5Bs/eTfOR3ORQ23ibJkaouPZV2JdiLBRFz9u3EbBLZhCvph8VyZdyRXJNEQV2p8DfrEuYcVAXgEYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 09:09:11 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4f97:ad9d:79a9:899f%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 09:09:10 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v4 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
Thread-Index: AQHa+s1gFqf/NeG0OUeQITFn167VYbJHO9OA
Date: Wed, 4 Sep 2024 09:09:10 +0000
Message-ID: <CYYPR11MB84292EBEE3B0C4EE7BDC3160BD9C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240830111028.1112040-9-karol.kolacinski@intel.com>
 <20240830111028.1112040-15-karol.kolacinski@intel.com>
In-Reply-To: <20240830111028.1112040-15-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 6c22b1b4-325b-480a-9864-08dcccc13d4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sQarHf/sEZVDMBz8mHYJM2gzFwx8g8j5EgvUM/hA321w2Hg+l5ZqoRAtWPde?=
 =?us-ascii?Q?/GBNncXVW+7TcMeth4MVJbHq3tmyrL/mizxPVozayzGy5VO4T/eVirlRacmu?=
 =?us-ascii?Q?6229eI3EDjZf4BrtaWSOWe2CD4v4yejmgvt88HLAvEgavauBv0/X5rs+a0Os?=
 =?us-ascii?Q?EWGY/olHOWAHhqA9yXs6DVPBSPBueMp5Ma3g+jQsHW8SHZwHJa2VzeOW4qf/?=
 =?us-ascii?Q?wdls6x65iqpeIqCtj4AkUp3K5gXDBogVzIFNK4dKDvgPdn3vXNCCrx+PAlxn?=
 =?us-ascii?Q?j/7fgiNQToosABNtsIW8Nv6CqBujY+rOoQKoQaX5SVNOe8HAH2ICx8N9jniq?=
 =?us-ascii?Q?4BPQX8lsIcgeCG2p/eBSqppVX24qe4JyGxgknyx4GzNTjM9TLDmk2wGsfeau?=
 =?us-ascii?Q?6RcnmVb5TV27ZTh2l43hPNy0ePhe6ToAn4bZhnvgJg7BEZs9CS69003ch4El?=
 =?us-ascii?Q?1iiVcDAcDvCi3RKqHLUZC8nPBIypNZTsrGpUxvI5hGfkzwqMtwAkJlRuWCBz?=
 =?us-ascii?Q?R4b26/mzpK9eaQ4BFDP32oCxj04RTagh2qdGdK/ouQgJ1gtydRdZuVi6yRB1?=
 =?us-ascii?Q?b0lxm4gn0WJfynDi0WS8GXuHTlrM82acs9UjJUk0FFsodZgDcPiM1ZH+PiMF?=
 =?us-ascii?Q?i353bpJNfKh3ICpTkSFxcLCTUP8vAwV6+xvXfC5r9PcIZxA1dOZnx9hGvArN?=
 =?us-ascii?Q?rqaxhAKZCwlk+o6psvMI/7QA0deq85uvOXZzHlPqL6dJVV2Q2lxV5ijXpFDK?=
 =?us-ascii?Q?LlZogsj3u2oojtRxYANM8mtTj5EJz/TV1B6TCkyLjjpwjffbk/DjF5EX245w?=
 =?us-ascii?Q?coyhlaAYoIDbYnKGY4S9kqSzYOk6Vb9c8H8jSd6xYlS6SKUrnFJdjNtf1FSK?=
 =?us-ascii?Q?Uf8qBCfbYxUgTTJFiFzY8IzM1P9mUr32BKoYxBJSW1E23pptie4LkYLOLr3e?=
 =?us-ascii?Q?qbSYAB5vO10Ik7CKCbMVJ4CRyqg1H3NzrLkKb77vZpU1MT9sG/xlR3VF0NAy?=
 =?us-ascii?Q?6zrnYwOURgqCkEGnOn8kJoRIqtm3RQnY3FJp39IS5iIKiq8OK9b0tOZia7Au?=
 =?us-ascii?Q?kDgVpj43KYH7DtZP9CAyR0IYFmKuvdXSUxdnn/5v6LmLL8j84M9xU6sDR+4K?=
 =?us-ascii?Q?YgOog+8cYPKhwZoweR3pbgwBjQlxu0nc8H9GBqeLeMFhK4y6AAt+wOv7z0lq?=
 =?us-ascii?Q?07Oy5l4H/w2Zc1qNcwER6esXaILOuTdhzRyyA/rQ/OPnuk+0hPbgprSfKKlK?=
 =?us-ascii?Q?88g6bqBdn3rRP4PR4EVgcpfqGXWHYq0KbJ88B9jQfeCnwd55TzIUKnV5Aj8F?=
 =?us-ascii?Q?nfhpUCi3orQk+vHTsw4l4ijX/uSSQF/PMMKgcVRyLyV+Nu4vhW1anr+kW/54?=
 =?us-ascii?Q?MDdyn5b4ILkyS3OxntCBph21U/QLryG1ok8T3ICkGU7F9HFFyw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rTeKTo55oPuJzZa5CjQZllgln8odPI17SZ/hwI4WKveChYIMUEMNO9rmYKep?=
 =?us-ascii?Q?i+shJ/QzqSrOJWOROQ3oCqALiXRoA5r8a9kBaUQZ62P2AlfHsaDuCdy9qiMW?=
 =?us-ascii?Q?zwP7zYJjPgfRD6NGZ0IUGW2wPPpls8c5rEuLBQEb641N4yhDo0ECfEPojwtQ?=
 =?us-ascii?Q?sT/FkYLB+9ED8ltrGcKElkD1XvMwzxwhqJDq4RUnfKbK8vqv/8elcb0MprwU?=
 =?us-ascii?Q?5B7BmjxPfL8Q+Scxhp3wUjBM4ZbbjSq2/OXaJYKGPwwmjcgyK0ZlNP6alR64?=
 =?us-ascii?Q?h3Dk2t+IBFJdkiKsJuriLENyAeuk9bPOYZoMDGZmS2Kfm4Czps54MBdCiFK/?=
 =?us-ascii?Q?k7sPrtRWH221x2c8IIU8Q8hcMJlDkwHwP+BJpo25XOkOQyTtQNUmxjKe+Xr1?=
 =?us-ascii?Q?s5o45DKLpGY7tENtgxz8yI25OX7HpU7AU/0yW7QwnwFyZ72vULX2AzW946Oj?=
 =?us-ascii?Q?B2OvBL6Elat+ac6/30WbOEf0on/nMMq8DRvDfrVoBTX2xUYnbYnxQ0T254sQ?=
 =?us-ascii?Q?liwOUlO15gy5wYh8gdcYn/gsu/zbeoXkeJDOsW9KR3DabHXpmi3Mwi6nmIvg?=
 =?us-ascii?Q?zhum0W64FyRth5g59AL/3S/Tzex4R6hYV+T/8Q1D8o6fHYCSTqml6u77cwah?=
 =?us-ascii?Q?qbsDVUTiGmwlglNrzjFzy9fCcYXok6nbM/OtDicvBsbBBbyY5H9+11aIWgTA?=
 =?us-ascii?Q?AUodW/irlVJeNeMH0GcDbYArqQwqcUx48Oop2iuMW+bt0TOm7QpZwzNNAeZ6?=
 =?us-ascii?Q?+8jYvHjoj54y7lykn9a1vyyKNHbi0Ne43d8spKjA+XyQ499zXsdWrx8lt0T6?=
 =?us-ascii?Q?pRwBsc1UhRMFfpWUNzUZPqJuCbqbwywHQeykTUMN/NiMSkxSeAUB8I9/A0Nv?=
 =?us-ascii?Q?UYNW3qpe8vwaMd+NzVSk4E3+N2Xm0HGP/Htc+t17ZhiIXhd2k63UNuXjBpoT?=
 =?us-ascii?Q?Oo9RUd8g87NmRoP6H8M+RLID//UlCNd7jT4TxjOCBasxth12Ak2EqW+ivPH7?=
 =?us-ascii?Q?rpqNfghjIWy8XTZ9JrNoc9M4fcU82pKaKlON8FSP1NWe2tBghwAfxRjO33a4?=
 =?us-ascii?Q?MlyHgGBDI0H5zPZKZttGQvkVFWBGoajCoSx+OkTGrqaYHXQ5Mhej0Ga7SGh+?=
 =?us-ascii?Q?RO2RVoMHC84eIDsytBDfu5kywdyLxMnD5bsk1e3nfu53+sQdIsbsGp42NxYG?=
 =?us-ascii?Q?N4Ot6aX+iW6AhdDY75/n6jdvc0boo79fxLLWQGT6ayb+0+q/SZcWRA2xvfNo?=
 =?us-ascii?Q?YelUTfqZWLI7VXOykZttDlEwenfzBBgTiKEQYJS5WkWpSRtR+dX8kQLWN8xH?=
 =?us-ascii?Q?ZJTZ9nYKzCPFuvRcAuodDDUpr3VnrMKSQlzoGc2xaqiaG1ZUMtnG4qMtrXnm?=
 =?us-ascii?Q?Gk8gV50e2cAJn4g4RLTfdsN7wG4pfTmBl65wRtkDfxUP50AokpElvefolizw?=
 =?us-ascii?Q?JnNXfVcE/6oWOCIM9NPCzLAeVubrlpuaMwD7An08nco8SbmkfDuZyIh7oYak?=
 =?us-ascii?Q?VG70IKuBPohIuHWiQBE//hh8S2Rx1wWnz4iSg/4BsP+Z7C3UGY4b+AObbhgr?=
 =?us-ascii?Q?XIgHAOckysDfnFA/h9iNvRvPV77ni0a9pkk1IyyGtaHE1eU6AtQVvpWwuNd8?=
 =?us-ascii?Q?hg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c22b1b4-325b-480a-9864-08dcccc13d4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 09:09:10.8269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KrjHI1ColDv5AsnCvzV6DNxQXiRvi/GSbltSISDgpSY0LWguWN/lqDOEOtnzfbi9I+P1ol09viH1S7eq7Dy2dKYYPWzxGv+/FjYDuGseI1zs+C6po31828eXiE0nd1zA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725440955; x=1756976955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bkqhXfHE2mobc757XDkOtQIsF7qQb9R9NPMaQS0fXMY=;
 b=W1GefJ6oddnAY3bBhEXj1ay56u5KkLjI9d/cnJO+Qd3+Acn+5vWdrXiH
 YIjoz/gs6LxS2w3HcHNqtNX5PAanVmuWR90TaJ+OUqm3uC0mMxVhhRCvB
 Oy17yelOIGyl1P8pQuVs4hZfhgkOJsWeF+hB5cIBI1B1K+BHNxsJDLZbF
 cnUO1VPMA5O+HZ3rTcE3ZtVPIIRFDdCc1hw4SYWSeYuDpkS2c6F4l2Wyh
 BbycShyUFgG7hEyBh5PTBv0oavutQnZAa/v7Xj1Pe1g1sIOJcdLMk6E+x
 K2YaNRi/shVvtQkfu+8EBD9euMnhjnV9bMG8GAXt5+j2Y70xpMldpnW4C
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W1GefJ6o
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 6/7] ice: Read SDP section
 from NVM for pin definitions
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Hagvi,
 Yochai" <yochai.hagvi@intel.com>, Simon Horman <horms@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
arol Kolacinski
> Sent: Friday, August 30, 2024 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kubalewski, Arkadiusz <arkadiusz.kubalewski@i=
ntel.com>; Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony =
L <anthony.l.nguyen@intel.com>; Hagvi, Yochai <yochai.hagvi@intel.com>; Sim=
on Horman <horms@kernel.org>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel=
.com>
> Subject: [Intel-wired-lan] [PATCH v4 iwl-next 6/7] ice: Read SDP section =
from NVM for pin definitions
>
> From: Yochai Hagvi <yochai.hagvi@intel.com>
>
> PTP pins assignment and their related SDPs (Software Definable Pins) are =
currently hardcoded.
> Fix that by reading NVM section instead on products supporting this, whic=
h are E810 products.
> If SDP section is not defined in NVM, the driver continues to use the har=
dcoded table.
>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 ++
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 138 ++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_ptp.h      |   6 +-
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c   |  60 ++++++++
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.h   |   1 +
>  5 files changed, 186 insertions(+), 28 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)


