Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F963CC3C4
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jul 2021 16:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E35C842EE;
	Sat, 17 Jul 2021 14:16:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5DvFDv-SVdVr; Sat, 17 Jul 2021 14:16:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5F9D0842E3;
	Sat, 17 Jul 2021 14:16:25 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 127FE1BF834
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:16:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 005BC842DC
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nv-QkrrJt0VJ for <intel-wired-lan@osuosl.org>;
 Sat, 17 Jul 2021 14:16:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A2AC842D7
 for <intel-wired-lan@osuosl.org>; Sat, 17 Jul 2021 14:16:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10047"; a="271964933"
X-IronPort-AV: E=Sophos;i="5.84,248,1620716400"; d="scan'208";a="271964933"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2021 07:16:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,248,1620716400"; d="scan'208";a="453026035"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2021 07:16:18 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Sat, 17 Jul 2021 07:16:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Sat, 17 Jul 2021 07:16:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Sat, 17 Jul 2021 07:16:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z4dRoLZfhIiATPw9ul9kUsYy9a5+Ypy4/Z/m7N3UvkjAPNhFm1vqzk63p83uFw3+UApaYnv9hTQaOfSINjktKIjY4zGMJtj4RHzs+QWgGQTBU8IvI5kSqJ/q1dFQrclXpKxmkblm8rDz/WPj3NIpOpjwdbMmVl5D4XGjtIPC1fUjgfdReanA9Kg84NtLNfglfHNFvEPwdVGU2FDXl4bKVKJqCdVHoHkp5ayV5/YWmEFtlFAAdRox3ic+gi0Ns6U8vAcofinJUDMRAkThsBH5ZPFbk7+LOWQIM91EQx6gOfkfDe4kgb0taqgoqbkm/yfRJxLf++YlVvq+VuXpAvNa+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaUuTx+u4satKvwaeHdcymRHml452VBbIFFcRqpXrdc=;
 b=jC6yUCftDOrM6DTfV5PPpRnBEC514UpnWdXpS99hrmrEn03y6VbiVQzW4G/Qq2FmJxk8cGI8nCOt5Yn11ssLECqMD5mgsOP7arlIgBc04wLcJehMJAiFn5VqZpAzoVu8hd8IsRWQi9TGx5BjBO54iMiYiUz6cybmSEuxKosxnJvqcUjc6pqeVIcHks3EfdlE5tgeypI02wmLtLg7/NiG52XWOHBRrA3NMKMeAgJaVRxXar2QC2vJick2fU7+zL5+OBdGn8/DhJ1JHwtm1Hy1HdIohYP46nf0yrmGTzfA04XDv+0AoxX4bWdxubfm+OJ0GZWiqtEhiEvG4hvC81B2Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OaUuTx+u4satKvwaeHdcymRHml452VBbIFFcRqpXrdc=;
 b=wnCdW3ffIMFffveMqzVujglNjy8qARb+U4xEhnx04I2jHIM1nTn9AT5xVQAdq3g/ZYijjyS3n8joHzu2hIbLqY1SJlzP8SD7nUczOgpUgh0SiuF9oyeLUt7GjGHXTAeFidlmVBcRFEbR+AtOAF+kuz9l6QMrzceMcY3cjZi3Zsg=
Received: from BYAPR11MB2871.namprd11.prod.outlook.com (2603:10b6:a02:c5::26)
 by BYAPR11MB3285.namprd11.prod.outlook.com (2603:10b6:a03:7b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.26; Sat, 17 Jul
 2021 14:16:13 +0000
Received: from BYAPR11MB2871.namprd11.prod.outlook.com
 ([fe80::798c:287e:b562:be7c]) by BYAPR11MB2871.namprd11.prod.outlook.com
 ([fe80::798c:287e:b562:be7c%3]) with mapi id 15.20.4308.027; Sat, 17 Jul 2021
 14:16:13 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
Thread-Index: AQHXdRyBB4nzBXjO5kqch/j3UwUvR6tCB1GAgAU4RcA=
Date: Sat, 17 Jul 2021 14:16:12 +0000
Message-ID: <BYAPR11MB2871FB77D7B3A63861724091B8109@BYAPR11MB2871.namprd11.prod.outlook.com>
References: <20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com>
 <f3b716f7-7009-d291-2d12-cc0c1196b501@molgen.mpg.de>
In-Reply-To: <f3b716f7-7009-d291-2d12-cc0c1196b501@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 10ea857e-7f4e-4bed-62d4-08d9492d6ecc
x-ms-traffictypediagnostic: BYAPR11MB3285:
x-microsoft-antispam-prvs: <BYAPR11MB32856415434C612F90CCCFDCB8109@BYAPR11MB3285.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pPPp7vnqVIMWKLpXDbjs7bcs2Co+X8T74hBzP8tRSKrfzt2tmlRY3oMrCh9rF6JD6pR/huBbZa8l/5q1vEUUC1q4kfOxgMk8iVJy9WgwAloGxjp7N3voTm1NGUlbzXCBcNbUmRgsIzhRHT+JcICfrSI+Y5wXwyFHuxRRFTFal4xXC1uel8nlYQExVBTY7InCzR9NkR6M75prHpP5uytRf+kTRKC5dsDxDZy9My4klKDIyYuUPrjQet3noAQKbmiEi4Ten7KHJxCre96snhxdxW+svA87CwTgzl4nLrO9ZW4pF6RnlZumTDceDKIbWgdrQe9wJcIgdivSGtSEl+65JP95GGfzCNrnremvz9m6QvIAnB638yW4ID7SwYRo61RWgiVM+4q9Qc4AgmKylgNotfauPUrC5pKre58j9hECXLoC4XFKXAXp+VK4fCfNRZPt9pUjxARFV26c7eLUWgC1BzDjHnY/KBbGDtJ8Q2kwkATiYFrLfSNzfudIqyZfCtjco5YemoxZLSmYK34N3ckiC6jZvCfxihx7iuwRul7rtGbbbn6WOadS/O4I30ZhNppOlf17/jYCyky48ircytPCx2/E0zzZkknvTDrdlLldS/ux9XyQd2GJw/bKkKK6jVROYnrr17KdHKTsQKEfdmGTT0y7ozWd9ShzXNl+KZDKDuG8bQ0YyQwNJMZzRizJfVdl+gqCfQTeB97jlmatlHiWOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2871.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(33656002)(122000001)(6506007)(4326008)(5660300002)(38100700002)(7696005)(8936002)(76116006)(316002)(66946007)(6916009)(186003)(2906002)(71200400001)(86362001)(52536014)(66556008)(66476007)(64756008)(478600001)(83380400001)(8676002)(26005)(9686003)(66446008)(55016002)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZDBLT1prVUt6MDIzUThNZVF2eWRwL3R0bk91d3FEZXZ6djVmZmZ4cjBTbXNj?=
 =?utf-8?B?VUtUY3pKZlJqY0k2MzlPcVpRZ3gzckJTSVRCRGpob2R1MzBsbTBWSHBqTnRJ?=
 =?utf-8?B?ZGNEQ3JLbGlYUFpDc25adnBrNlo2TlZHZElPWFNEZHNIRURWcFNaQ1Z1NUZW?=
 =?utf-8?B?VG0yOEkxeFdLT01GMkhHQk16cE5ZVHBXaERmTEFMSWZBcXEzN3Vrd2V2cGNB?=
 =?utf-8?B?QTZyTHpnUUNnMUhBZnc4Q2lveHEvZ3RxWWhLQ2tJd0tMRFVhTDlpb2RqMG0r?=
 =?utf-8?B?ZG9CbnI4ZVNDMjhmeTRpUTEzMnFQaTljZWx2a0JCWks5WFlnVDJzVWYzYWNZ?=
 =?utf-8?B?YUhiS1pqOVppeXk3Q2pCWVdTYmhDdWN5MUo2MSs1bFRqa0VCNkFodEY2dUEz?=
 =?utf-8?B?N1c0ZzhGYmpVQnpOUGxuUElPNmVCUkxnbk9NT1l2MnVUVG1LaXZYc3dGRWdn?=
 =?utf-8?B?bWFoWDJqUHkrRVpQcStVYzBJWEY5QnhjTGNxSUxLVHZHbCtOUkhNNU8vTnN6?=
 =?utf-8?B?bklqYld1eTFPMFRDVWlmZjhydS9yaGVWREZpK2pJSUU4RTBDR3hkbG1HUmph?=
 =?utf-8?B?ZlhnOGxMV1c1VTJSWnlkcmZXeFZHRXcvSHBFRXUwL0hLd2wva3dwZGtMZHVH?=
 =?utf-8?B?OHQrTDZqbzlCNEJ4NW11djdxRm5RM2RCWjRSUENwN0ppMDE4N2ZlVnYxZWl4?=
 =?utf-8?B?SERJWTVEUC9tVGVqVzVYUmhaWTdkS3dzRFpScm15SU9DcFN1NEJIUDBJUkU2?=
 =?utf-8?B?bnpaMkZIcXpZOXVWSUFCTkFWTW9tMjFXeU1VT2xWdjZkMWttRlVtU2lZOWla?=
 =?utf-8?B?R2lvTHhkOHJ0U2RCV3BabXlHTUMwOWxVYzZGUlB6NFBweURHdWxIVWpnZ0Yw?=
 =?utf-8?B?VGJZY3F2Wk1SWlUydkdOQ3RaYzViNnVoNHdQeDlSRFY3ZWk2dzF0V3hna2VX?=
 =?utf-8?B?akpsTVlZVWFLU0xhTDk2V1J5TFJaS3NFSjNVNDlCUUJjUjRlYkdkYjc2S2lm?=
 =?utf-8?B?Q1pxT1B6ZEROT0ZBbUtKNytuQXMzU1NpSWE5bmw5emxuZDh2VnhQSyt1RVY3?=
 =?utf-8?B?V0tadUpVcDRWUFNtNWFnam56RjhERGNPQjdmS0NQWEtLcFhRN0kyLzhTSGVR?=
 =?utf-8?B?QWo4KzR5eElIWEJ0SW54c295di9DUTJxYnM3YTk0NWZIRU9JY0wyNUlBZmUx?=
 =?utf-8?B?VUtFL1N0TVRBNmJLZm1XRU9XbytmS3RxamtERThNWk5qYWlHOEpQZDRrdUNV?=
 =?utf-8?B?VFczeU56TWlNN2REeVphcGsvWDJXeVhYZzFyS3FKU1RDTytIeGpZemxFaUli?=
 =?utf-8?B?KzdvZ3RFOGRhQTF3aXRDOGZVSllvaXppTnB2RHpTTHowZUc1Q1RrYThxQ2dy?=
 =?utf-8?B?R1FkbzVDb1lFVUdzUTkyUVRlRWNXSE9jT21ONk4yWkZwc1REUlk2aklUWSty?=
 =?utf-8?B?d0RhTDZJT050VWt3aUx2L3FSbU1YeUlYbDhlQmt0SEJueFB3YWJLU3NwYXVk?=
 =?utf-8?B?RWxuK3B0TXk5MjNEcFhmYkpobitzK2VaQXpaTzVuS0s4WVBhMVFMT3VGYW5m?=
 =?utf-8?B?TTdWZjN1czlnREpSTGFvaWYvTnIwb2ptZmVRR1RRbW1Bb1hKUUo4aWU5WnAv?=
 =?utf-8?B?MWYzVGVOMVZqODRFd0tIVzlsOEJCbmVqbDZoMVVqMTRBbEtFcFQxNTZjYmtZ?=
 =?utf-8?B?RE5GVHlqb3FleERqdHZnYWQ2UndJRUY1N2lxYUpKUkIwT0xSUHhWOHBGVkdM?=
 =?utf-8?Q?5eVjaUaz4MIM1rZdz2FrUondtDNzHyMrga3pM0e?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2871.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10ea857e-7f4e-4bed-62d4-08d9492d6ecc
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2021 14:16:13.0120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vrTGnHqn2a9XDw9p0TzsFLjfC3BGJNsU5BE3UgNzUDOhDN3wOYEmPADyDnPV8DxDsjZbfmJ1YEGDQ0SycDqbgLL0C9XcyRBz4A7XxFaYIhMjcnRYSOn/387BuAikC1M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3285
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Paul,

Thanks for the comment. 
Replied inline

>-----Original Message-----
>From: Paul Menzel <pmenzel@molgen.mpg.de>
>Sent: Wednesday, July 14, 2021 2:24 PM
>To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
>Cc: intel-wired-lan@osuosl.org
>Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
>Speed 100/1000/2500
>
>Dear Muhammad,
>
>
>Am 10.07.21 um 01:45 schrieb Muhammad Husaini Zulkifli:
>> As the cycle time is set to maximum of 1s, the TX Hang timeout need to
>> be increase to avoid possible TX Hangs caused by using long Qbv cycles.
>
>s/increase/increased/
>
>Do you have a way how to reproduce the issue?
>
>> Signed-off-by: Muhammad Husaini Zulkifli
>> <muhammad.husaini.zulkifli@intel.com>
>> ---
>>   drivers/net/ethernet/intel/igc/igc_main.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>> b/drivers/net/ethernet/intel/igc/igc_main.c
>> index c8abd7fb70e5..99fb5641297d 100644
>> --- a/drivers/net/ethernet/intel/igc/igc_main.c
>> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
>> @@ -5322,7 +5322,9 @@ static void igc_watchdog_task(struct work_struct
>*work)
>>   				adapter->tx_timeout_factor = 14;
>>   				break;
>>   			case SPEED_100:
>> -				/* maybe add some timeout factor ? */
>> +			case SPEED_1000:
>> +			case SPEED_2500:
>> +				adapter->tx_timeout_factor = 7;
>
>Please mention in the commit message, how the timeout factor of 7 was
>determined. Why not any other number.

There is no dedicated number specific in data sheet for this timeout factor.
This time out factor was determined during the debugging  to solve the "tx hang" issues that
we were seeing in some cases especially during Scheduled packet Transmission(etf).

>
>>   				break;
>>   			}
>
>
>Kind regards,
>
>Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
