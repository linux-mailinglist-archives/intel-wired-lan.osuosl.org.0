Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1485A3FBDA4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Aug 2021 22:53:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 971744036C;
	Mon, 30 Aug 2021 20:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SXct5I-egA6t; Mon, 30 Aug 2021 20:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EFF8401F6;
	Mon, 30 Aug 2021 20:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 672571BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55832404EE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cT0iktdxOhaD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Aug 2021 20:52:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 84CC8404E0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Aug 2021 20:52:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="218394679"
X-IronPort-AV: E=Sophos;i="5.84,364,1620716400"; d="scan'208";a="218394679"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 13:52:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,364,1620716400"; d="scan'208";a="540726517"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2021 13:52:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 30 Aug 2021 13:52:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 30 Aug 2021 13:52:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 30 Aug 2021 13:52:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TgdpenCrsU1dkzZMDgGOmHk0PA4wXsMGMwoGifWS7oN8D30HYamFhMQGKdqLTDagBV2MrFmhkJEshjS9vyhNKZHz1jMeXAnJVteWDaxiriNfpxQE9l3JUwqBGn2NbFs/9lwhMWRi6BdOPnX7EQIizZ+GM9umUmKgOSWj5TTFuKTBidy/zNop/+VdIrSUNw/u2vTGDkKvwYyartZBebYeKUIMTuXSiOKTluEaZZB00p2vHWcPGhcZ5nyIk3QqIOvgnyCA5xlDxoVEQ9T+uH0LlP3Piu7UZGOjNSWE7wxqW8JdQ0xC2xEiF3FYAh7e1DRmj8jLXBt9KbEZQvyqUE/F6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FgWQM3zfAOrYkBPKxy2a+yWCHk4Z1tbdCONyp90wHZ4=;
 b=ASYbt3MO3DsaNfuwPs4BdSmS2oEcRMG7+0o9lVVoX3s9tVxK6/P1IvI+z7Qcj1LTYRZ5z974CjPg4q7T1RQhdgHePH0AkMvuCy6kZL/+PU/JJ8gca8GnI3FtgBQkJie+xYF/V7r6eJJDmMfEuaWzb8Y/ju1dtzsPNMBtWmCMXNg43+iEd7tPEW7lQZaoTYcUZNfk09sqG9wmg4+scSbRFvC/nNRzQ9DKL4iMAqCeLuzoImQwHsoFMUASXMU9BlVe2Zvj66D8IbMdm3Ecjjcx2Nd62GMSy75AxEa3gKqZq7cUvRVql6UF7IKGDirc3zFlJmyQ2O56pn8IyXVKZyMCzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FgWQM3zfAOrYkBPKxy2a+yWCHk4Z1tbdCONyp90wHZ4=;
 b=bs4Dyeq8XbQIzpewPaUNQMMgcmmgr2FcsGaqOhNwa2idcMH/MEdZJYANfyv3ZSMut3UjnFk3ltndJOP0LWVi7wajXdO7IdanJS1E4RDspm2Per/G4uFvjr3sieuIHkZ8r6+B6gEeJBiGrxUT2+PM51G8qY7ntMeb6fGnUv+paiU=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4606.namprd11.prod.outlook.com (2603:10b6:806:71::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Mon, 30 Aug
 2021 20:52:41 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4457.024; Mon, 30 Aug 2021
 20:52:41 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pwaskiewicz@jumptrading.com" <pwaskiewicz@jumptrading.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH 1/1] i40e: Avoid double IRQ free on error path in probe()
Thread-Index: AQHXmsiBRJTk/bztnkiJewAWaKSBqquMjXAA
Date: Mon, 30 Aug 2021 20:52:41 +0000
Message-ID: <50c21a769633c8efa07f49fc8b20fdfb544cf3c5.camel@intel.com>
References: <20210826221916.127243-1-pwaskiewicz@jumptrading.com>
In-Reply-To: <20210826221916.127243-1-pwaskiewicz@jumptrading.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: jumptrading.com; dkim=none (message not signed)
 header.d=none;jumptrading.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff6288fd-1182-4a99-d0e5-08d96bf81be5
x-ms-traffictypediagnostic: SA0PR11MB4606:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46065CF62B762430515D52A0C6CB9@SA0PR11MB4606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GSHulywIfX8xngMVv8Knh3nIfHieWLQbI3AbFmohh2MVeMfTyAGQv5O9KdaJtJO2B0pZG4z4GdQrfOpBOreo45vHLfVYgewjGzkrGrrj0JNvCftWVcNn5TIc51Q2p1W8/rFMlkH3SKkqi6bzGZpwoslqHxSFeBH/yoMwUIhrednNG93e89ukJ8YEDRkOyDYGzj64IhPx0z3o3Ki8fBBV9dhR9NL7/ILewyguCevo9AbLYiuMUTzq9w0++WmYlSdElrpqTpiiG4n9k5tpXz0dhi/t7iInulN3yea9+P5nGGuCyLRiFi41+5I20zQm7M+ussit+fqSXn4YphZtR821ldRT/XuSYJUR3+/NqTa67+7diS1w/gQ0Xp6hjS2Xx0knhiE6ThkMoaLesOEh7wcMr9zoEoVblPTzPpIuKuO+4RXlczq58NvTnAd62gpxED9HIwjiKfUXbMGbzHAs4iqMwCPvE9NXQOFY4sBH79bS0qNII04ED08j2CLD5o5hsNMkDDteiDTO78sBKaFnRQlYn3nTL9KdLEdejAIjqJjr6VbcgCmLWR11D07SkLXyCFPugKFbQFwlx6Ga4wiUsier+M1ZOOHhlLt03tZ2RIdkznBM0xSHY4H99R5X/itmkJVZPM9Ypf/ssovAJXknHaH+LoPkRJWK0xEKgs3hr60Fc4sYmyXDpcTMl3BNJ5mHHohS0fL/QBmj4blWMG6PkWKezw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(136003)(366004)(396003)(5660300002)(26005)(91956017)(76116006)(186003)(2906002)(6506007)(8676002)(6512007)(54906003)(2616005)(478600001)(86362001)(83380400001)(66476007)(64756008)(8936002)(4326008)(316002)(66946007)(110136005)(66446008)(66556008)(71200400001)(122000001)(38100700002)(6486002)(36756003)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0xrWWhDSms3dEtNQVJhNVVjK3JBT3dqTXlwdU9RbGg0RmxSYmpNYTBqTW81?=
 =?utf-8?B?enJCaGx5dE5IUXYyMjJHOUhrN3Q3UVkwdGdsM05lUmhVZGhIdWZqanI5Tjh4?=
 =?utf-8?B?L3NRb3UrN014N2xGWEh5SkN3UTlRSUpDWU5qaFhWRmtJVXhONXhjcmFxNWt1?=
 =?utf-8?B?YWZMeVpDTHRpYXdudWNUd3RSQXFwOTJObFI1ZjFaQVhlWHppYXlpZzJyekVz?=
 =?utf-8?B?SWFFaWdsMnRKMWx2K2VMcGVQekt2V0dsUU00azRlaHNkZ01UUy9XMDBndGdB?=
 =?utf-8?B?eWRvaHVVNll2NHJuenIxVGdCSnJMeEJCUGdwVUxxV2s4MUkvcVpqMytaV1Bt?=
 =?utf-8?B?SzJtY1V3UzVMc2xCMHFxdEU3RXNaYW5ZRzVTQWdoVnA0Y1Y4ZHlVaFFPQWox?=
 =?utf-8?B?MWlJMVlZNFNtMG5BUGxZWGxwV3VTVE55N3l5UmVLUlhQaEpDVm9nN1ltdGxW?=
 =?utf-8?B?NC9SSGlMT1VpeUZEM2RtbXJRTHN5ckFOZVIvMURqbFlpTHVIRE1Bckk5cDdG?=
 =?utf-8?B?dlFXb0RGeUJpWW9MREREdlRKcGhKVGxrczVxY0QzUlNOU2kzc3JoVDEwL21E?=
 =?utf-8?B?UGVIZXl6V1Frc2MrbmplL1UyOStoSk9WQVZvOFNOMEd3eTU5NytsL0d3Q0VP?=
 =?utf-8?B?ZmZHeXZPYVJLTkMxVjZ6MnI4U0g2bUFXYlAxOFI0OHo4SVloaFZxeEZab3Bk?=
 =?utf-8?B?SkFybi8vYTJ5VEZCeUNYanJFSXBja2RENW9lT29NZXhmZFpQUXhidWo2clV1?=
 =?utf-8?B?TjdtZ1hqQ0dLTExFNUpqRHAvS3dnY2htalU1QmZrRVhGVHErY1pXZFhmME1l?=
 =?utf-8?B?R2drTUQ3bkw1bzZDSk5YODRtWWdxNzBmeWQ1Q2ZRWUVGSkx3blIvV0IwZ2pu?=
 =?utf-8?B?RTRHZTJTeGtGUnd5L21STE9ybXQ1MmJkajViWFhtcWhNWkdjNnZ3QnZzbXd0?=
 =?utf-8?B?SXl6dm85azVqYjZqSXpMellsbFFWTnBtVytDNFBYNzVFMlBiL3J4OFBqL1ho?=
 =?utf-8?B?cU5EN09qM2tDeGRNc21menJzemdxT01yaDRnMmV3akt0ZnQyaDBsZFBNejBT?=
 =?utf-8?B?VHppSkZsdjE4amlaWVdoWmtBT0Y5aXZCdUNDYUVQMW82VzM0U2FBcm4vVjRY?=
 =?utf-8?B?b1NUYWNNT3FvdmN5VTU2aUFIY3Erb0FnNGYxSXE4SzQzTkMvYmpVdGsrSGtC?=
 =?utf-8?B?Wm8yM0crRUExSDZaWHZVa2plYm90UU40YjR5a0ZlSXE0Rk1hOGlYbXJaYzlK?=
 =?utf-8?B?Ykw2MkxlS2hHTjFBVzYrU00zWDFKeTJZOUxGM01GZkZDSjdmQWtCdWFrYWZm?=
 =?utf-8?B?NHZubTcvNFpzRnhTQkV2aTJEYzNHdEpkVFlEY0NsN0wrVVRqYXNGc0tQVUNT?=
 =?utf-8?B?RDBCRnhHNEplVVFDcC9VSG1KTXVCcEtDY25LaU5Wdi9WRnUxRWFETm1ld1ZD?=
 =?utf-8?B?U0VFN3ltMXFIRzNjdDhKWFZYYUNQZU50c2tKekEyTDBkTmFFZC84czh0M3pE?=
 =?utf-8?B?eFAxMzhwQVc5QWZuVVR4dlY2VmdMdEhaa0RlZ0o1RVpnVzkydGRDMUJVb05o?=
 =?utf-8?B?MzJtc0puRUE0OUpDTmN3RlllWVp1U1lwbWcyVjkzTVR0U3Bld0RTS0h2alFZ?=
 =?utf-8?B?SENPdHZKWCtWTXB0ZkpOQmZGME93bDk5TFE3dlVaZm1admFUdkRhYmx3WjBv?=
 =?utf-8?B?Ri9TbmUxNE01YTFXNGhvME1velFZeU1QOEp6UHY2TThESFlsOU96aG54SjJT?=
 =?utf-8?B?Zklha3F2WFNJT2I4akliOTllVTk2cS8yanloazhYR1AvRmFFMU42bFRXSGp5?=
 =?utf-8?B?NXlDRGRMSmxxQ2taelFZZz09?=
Content-ID: <9345ED72E93A904BA7B0467E511AA89E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff6288fd-1182-4a99-d0e5-08d96bf81be5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2021 20:52:41.3343 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zcRa32/zWzSf05HI028Q/r52rxHybAyRBR1jkLVhfOr1H/Y7Yf/TZg6qP8yyMrqP2JJsCGQPJzFyZkKAiAERvAkEoHCzMvfeWxR/ud/VkaY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/1] i40e: Avoid double IRQ free on
 error path in probe()
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
Cc: "pjwaskiewicz@gmail.com" <pjwaskiewicz@gmail.com>, "Dziedziuch,
 SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-08-26 at 17:19 -0500, PJ Waskiewicz wrote:
> This fixes an error path condition when probe() fails due to the
> default VSI not being available or online yet in the firmware. If
> that happens, the previous teardown path would clear the interrupt
> scheme, which also freed the IRQs with the OS. Then the error path
> for the switch setup (pre-VSI) would attempt to free the OS IRQs
> as well.

Hi PJ,

These comments are from the i40e team.

Yes in case we fail and go to err_vsis label in i40e_probe() we will
call i40e_reset_interrupt_capability twice but this is not a problem.
This is because pci_disable_msi/pci_disable_msix will be called only if
appropriate flags are set on PF and if this function is called ones it
will clear those flags. So even if we call
i40e_reset_interrupt_capability twice we will not disable msi vectors
twice.

The issue here is different however. It is failing in free_irq because
we are trying to free already free vector. This is because setup of
misc irq vectors in i40e_probe is done after i40e_setup_pf_switch. If
i40e_setup_pf_switch fails then we will jump to err_vsis and call
i40e_clear_interrupt_scheme which will try to free those misc irq
vectors which were not yet allocated. We should have the proper fix for
this ready soon.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
