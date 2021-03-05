Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D2032F2F3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 19:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C7BB44ECF6;
	Fri,  5 Mar 2021 18:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MKNLbatNTnfL; Fri,  5 Mar 2021 18:41:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1980D4ECD9;
	Fri,  5 Mar 2021 18:41:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9044B1BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 18:41:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8B3F740002
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 18:41:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDqib1uvBuce for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 18:41:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7364840001
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 18:41:01 +0000 (UTC)
IronPort-SDR: B2V4ECkadUPGNepuIhC/IN8wiOQBS1LLv4nR9JhndY4eg/pNv9HGnDBNDHC4af3HrMLIJrqLs1
 5gAlzVeHtEhA==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="167606136"
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="167606136"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 10:41:00 -0800
IronPort-SDR: Z2PaTkAy+hFkl5FLutFgSHPuvdDAWg6yzrJg5U+zTCPSoW/5PetBLPR8VSRRTm3RdfmvMPx9sH
 Qaz6Y6zE1FFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,226,1610438400"; d="scan'208";a="401782465"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga008.fm.intel.com with ESMTP; 05 Mar 2021 10:41:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 10:41:00 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 10:40:59 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Mar 2021 10:40:59 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 5 Mar 2021 10:40:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hG32384wh0q7KK949jv4RgIWd416+jbL+oRaRhtupm4D/UKRZz6xXZ9qWKWreVfhvorLrbIcMN4nW76CDaTJBhaDs5GF3Vi26wfKBgnDk+Uvh27zenk0WYMJAqSjBQ2eUofKKwh9BBR0G14mqTBfN9yl6zhme/f8nZ7rjbNPMIaiZq6FUdeocEihEzzhmlPwzo8hQTVt2ovR+64+9chw8r3xVH5+EdGuP+QiygorEAiAOMjPOWgfUEx3oTurIHMeUObKiLbQFvT6RgzLKcPvaw8/PYd9PdiRUpd09fv/UogRdqPZBzYYQxRXkeBNI1n56/Z65k8RCfSCVe+/NoJ9kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8kZp8iQb4hq0A4fjOf9rusc+Sw+qfehq5GevIr2LYlQ=;
 b=PFACX/4t2BTqB9Gjwn9YJbsxeiiVJPuEBqVM2QJUAknzXxMXBdczW6ZJcBG1CRSe9q/lKzEqjxwWUKjQsN8BtI2aHzZbyTTtnJaYc2n/9kPfHWaINCW645VFrd1ci2hFy/s8LJa/UouYoSwirPkvb/QDlUPW/p999w7NFpmm+r55mHRSmIeCAI9SNOZtYPuwW+V8RPoNDTb8v431BREYwHwUu6fs4QccgZGuLXA3aeS9D8aCg+7BJBYkeAJoXyCvvsPNwLIA+hEaEO6dAdKxM01rGHwhKZyG9Zc31O75l1yMbJDVx7F0rX8AoZrWSbpYMdRCagAUhdwFjgdTXtxWvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8kZp8iQb4hq0A4fjOf9rusc+Sw+qfehq5GevIr2LYlQ=;
 b=ymx/4X8fq7QH9ys4lBcK8vpSJ2b6qerRR7tW0ZUWuSQwL6SY3zA4PivYKYP1URFzNEA4JIG4WAbia7R/uxOOMkfMiSBBTCk6llEm15O2dieNTr/M4EXXwwXBY3cBTyYBAkWGUNQzlyc8gfgG2LQzcaZwj3B4sHem8Jb79ZFIZQg=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB4007.namprd11.prod.outlook.com (2603:10b6:a03:189::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Fri, 5 Mar
 2021 18:40:51 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::9db8:680e:ac77:1208%5]) with mapi id 15.20.3890.032; Fri, 5 Mar 2021
 18:40:51 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: JD <jdtxs00@gmail.com>
Thread-Topic: [Intel-wired-lan] iavf null packets and arbitrary memory reads
Thread-Index: AQHW/+9MiEdQczt5Kka7rT2SBEkPSqpSO+SAgAF1NyCAAP/eIIAAK+6AgAAzRrCAFHmBMIAI9wmAgAAtzgCAAy0l8A==
Date: Fri, 5 Mar 2021 18:40:51 +0000
Message-ID: <BYAPR11MB36065DF92056873D70FC7638EF969@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <CAMnf+PgVx-bg87KCV0NbtSi_FRMokVVXLEwuA_XCH6UxR57rKQ@mail.gmail.com>
 <e73bcf37b214af6c8267622a49a7c9166522f3d0.camel@intel.com>
 <BYAPR11MB36062A9FC2CF8231B79DE0D1EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606E2AD589A7E343F32F7B6EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+PjeJ9rZMbnpxUS7eMzVFDO7syxsV-0NQ=Rups5V9DJfgA@mail.gmail.com>
 <BYAPR11MB360644089232F26D5F0E1BB7EF8B9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB36068D4844EB706F9BBD1AFFEF9E9@BYAPR11MB3606.namprd11.prod.outlook.com>
 <BYAPR11MB3606FA9E13804D5374EC2D46EF989@BYAPR11MB3606.namprd11.prod.outlook.com>
 <CAMnf+Pi9r_LmMhkJmhs9n0mWvO0XPWAhzZdshXKQhJpEMMhXFQ@mail.gmail.com>
In-Reply-To: <CAMnf+Pi9r_LmMhkJmhs9n0mWvO0XPWAhzZdshXKQhJpEMMhXFQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 73905266-846e-46a1-4115-08d8e00633d5
x-ms-traffictypediagnostic: BY5PR11MB4007:
x-microsoft-antispam-prvs: <BY5PR11MB4007D463316DB7B93B8BFDE9EF969@BY5PR11MB4007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nE5fo16PHU4SKl6t0jepTY/Xe5zQNNKxUsztV7wnfsSsBCiqX9vdH4CwmD33Wu3+sgagnVSJOu8bSO9Uk7ozPV72+O83zKctzknepfADnfFfuzrCqNnpHjlLDVq41pvo16bKscCHwL8y/Hh6TPshXmpP8qXXI+C3uAVT9LiRKPA1ZWlAV42y9KqY2axXKrWUAl1OBSc6H4iIdiZfdnaFT4Aii4u7VlIvjoxGhPDCEgjukzAKgGAm/f0b87tOCTrskY7j2TQYLXc+ITssvJlS45RragikvmDyMeqt3KIK36pltHiCIgPgny4At+Co7E6e0JCo5y14MvSj0ep6QMLI8RHvjqq0RVgMZvhSd9N2bpVmWxIQFoDhKM+1vu0wGxtBLGaVqwaY/cb+T2FOI98F00SXchJxkxcxh8XAAjzljna7DJGdVfyWC6Hu+STY3WEzGsq/8phvI1YjZ7koIvvwFt9pa1HRTsPzscjGhHX1wQCWdEVnOSHRl3Rjqjl0QCaNlPeYUU2I8hdeteXsFSlSaKaPKNJrn+V5cJ6CSMWCG+q77uXgxQcw7xlXF0S44PWLnCK22695cROc3xTAYPuOtJMgTwZ7qCR7KMVSbAqsRxs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(136003)(396003)(376002)(39860400002)(66476007)(2906002)(6916009)(478600001)(966005)(53546011)(86362001)(64756008)(66556008)(66946007)(30864003)(71200400001)(66446008)(6506007)(8936002)(76116006)(52536014)(316002)(26005)(8676002)(5660300002)(186003)(9686003)(33656002)(4326008)(7696005)(83380400001)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?V0dDS0RNSEl1Z0MyN0YxNlcxSGd0ZU5TSXpmeHdxNE9odFYzK0orQ2QrdFFu?=
 =?utf-8?B?S2RWdHhYcmtTaE5YT2ZCL25Ha1hhSVRNZVUwVGpMVmY4YnpNRjhFRHFxdDVG?=
 =?utf-8?B?VmlySVNkNUVDaHkyR045d3JSSmRacmZxTkgxM0RDaHFqZVhCZUhiSUJ6VjNB?=
 =?utf-8?B?NG43K2lqa01CREIzaFh6aWp1VERJeUo3QVZjTjdNTStkNW15bjl2bkVyNlBJ?=
 =?utf-8?B?cEN6MlAzdXYvWVZ6ZnhrWkZ6ZlBSY0ZtenF1cFFodkJlYVhiTk9ZdXdjbFhi?=
 =?utf-8?B?a0l3Z0s1d29zZ3hCMDhlMnRPTGMvUlppaHBVbmJOQTVLMnp3Q3ZKYjQrLzlM?=
 =?utf-8?B?L2tZdHYvNjJnT3IvQk5Id1kyc1NGcGxmTDEwK1JYQWtHdGc4RTRtYVFjOTlB?=
 =?utf-8?B?MnhuWSsvZWJkVkVBMlIzaFRoZVhsWFRjU3laV3RhRm1TTnlDZTkxQkpJbkNm?=
 =?utf-8?B?b21tMk5iVlhEaDVoN3JuMEFlRThxS0t3OHBUc0hvVE9IUHFOaFJEb2xCcmMr?=
 =?utf-8?B?Nmt3SFg3bTNsQ2M5OHVJYktVUE9XZWhrT0RMTFh2bG5uMTM1VmtDUHhJblR6?=
 =?utf-8?B?OXdGRk5kVFltTm1nUEVJY0VzeGd2OWZwTnZtbUdRRGk5NlA4K0lDSGRNekJ0?=
 =?utf-8?B?eTRXK1AxdFA2TTZ0WVhnM2JSL2ZwbllEZjZYQjZiSnIyamI1Tks4M2pBNkY4?=
 =?utf-8?B?b1djMEpMMTE1Z3Z3ZFBlbnlyb2hXOGlJMGgwdVh1K2kwclJoVnk5b29semV3?=
 =?utf-8?B?dGZRUTlTbm5JbFgzenJmckUydVJnK3lMVHk4RXdUZmV5RlBOcnVHUGdxVVIy?=
 =?utf-8?B?aVlwUXRjNVZQVWo5MXZlbXRBUXRtZ001a3ZGci9YYzFUQzl2V3pCcDJXdU1l?=
 =?utf-8?B?c3JqMCs2MjZSMDZlVTJkK3NRUGs0T2wyYm5NVkZtSHViN0NlS0Y4RDRDSXhY?=
 =?utf-8?B?YlpjNzBXYitEeWRyVjBkeEZIMzdjWDBxT2JyNHpJMzltSUZBbE9GcGc2TXFo?=
 =?utf-8?B?TkYxN0JndDI4RXRQT0NRenNkcWd5UHBhWFNycURsVkNWSDhmUkRpc2Jhdm9W?=
 =?utf-8?B?VDhTSzBObDZUY2FrcUw2TWtWVWxjZzVGdnF3VlI4L0dndkRzVUhPVTNRMk10?=
 =?utf-8?B?WUsvWmRCc3Q5aW90ekZPWmZ6NnBOUDA5b3cvb3NnVjlOcXVVUmFpQjBSMjNk?=
 =?utf-8?B?c0dtK2pzcFB4OU1UeWpsSWU4RlFPV3RFTm5jSXRMNGgvMlVzZjd0OVp2Ykhk?=
 =?utf-8?B?UGRXZGx5UStudk5ZempMQjlZejNUOTh3RzZFYkY2NjZtVFlvYW9SUTR2UkVR?=
 =?utf-8?B?cUIrdUNpaU5DMDdMOVhIbUJDWE1IdTdXSktGc2hTcU05MmhSMC9VNnNKTTdJ?=
 =?utf-8?B?VVlyLzFPMDVHRjQza3pXUHdnMmphL3lUcHNtMmU0TitaUloveUlFWVQvZUEz?=
 =?utf-8?B?TzUvZDhvVFFYdHMzSExWc2JxbUw3WGgrSFl0eXJVYW9JTTRucFNKdnRoa2VE?=
 =?utf-8?B?MWV5R1YwZ0MzL1ZqWFB4bjBOd1ZlMFoyQUNFYVZVN0lrMC9LOVVOZjQ1ME5s?=
 =?utf-8?B?UFZWWVhvOXNzOTRSU2l3cmJWTjVXaDZJcDA3Ui8yWXdzN2tYaStVaEVXZGxv?=
 =?utf-8?B?SDNtZFlxditVYTdMa2pHN2RKWFp0ZkQrMlhCVitiQ0tYQktKdUxueW1IWU5m?=
 =?utf-8?B?SkxrZUVmaEthRGplaThPODVWOTFqcy9JQ2ErT2FNOHdZS1FlWHozV21HQU1V?=
 =?utf-8?Q?MQnLtFu/g7ait+j4s4=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73905266-846e-46a1-4115-08d8e00633d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2021 18:40:51.5715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HEvJwNHRsgCDitx3whZRncVqxdOVnmLZ7oE0uYL+H6duRTSUTMuKLgNxdSyTTVaFaDT5YQT0YCiYX8vvoz0g3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

OK, I don't know if we're going to be able to reproduce this in-house, though we have one new test to try.

Also, seeing this on multiple drivers seems odd.

I did talk to a senior engineer and he suspects that qemu might be getting swapped out. Transmitting packets with all zeros points toward a problem with DMA mapping or memory pinning. We are depending on qemu memory to be permanently pinned in the host for SR-IOV to work.

You may need to start qemu with other options to prevent it from being swapped out. I can't suggest any because I'm not that familiar with qemu. Maybe there's a qemu forum where you could ask this?

I think our final test is to 1) reduce system memory in the host via kernel command line, then 2) launch with his command, and 3) run some memory hog benchmark/stress test on the host that starts causing lots of swapping.

Todd Fujinaka
Software Application Engineer
Data Center Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: JD <jdtxs00@gmail.com> 
Sent: Wednesday, March 3, 2021 10:01 AM
To: Fujinaka, Todd <todd.fujinaka@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory reads

Hello Todd,

I have attached the kernel config for the virtual machine.  I don't know if it helps you at all, but the machines primarily run VPN tunnels (IPsec/OpenVPN)

I still don't know what triggers the bug exactly. A VM can go a full month passing traffic normally then start transmitting those null packets for no clear or obvious reason.

If you would like the output of any command on a VM that is currently experiencing the bug, let me know. I am happy to provide anything that helps.

Thank you.

On Wed, Mar 3, 2021 at 9:18 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
>
> I got them to try the kernels you're using and we can't reproduce this. My guess is that it's your kernel config. Can you send those as well?
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Fujinaka, Todd
> Sent: Thursday, February 25, 2021 2:26 PM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>; JD <jdtxs00@gmail.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: RE: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> Just to let you know, we didn't get a reproduction with the latest RHEL 8.3, but that's not what you were using. I'm going to remind our tester of the version numbers you gave us.
>
> In any case, we are looking at this.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> Of Fujinaka, Todd
> Sent: Friday, February 12, 2021 1:46 PM
> To: JD <jdtxs00@gmail.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> There is no common code between iavf and ixgbevf. The speculation is that this is all from the bonding driver, but the repro hasn't started yet.
>
> Todd Fujinaka
> Software Application Engineer
> Data Center Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: JD <jdtxs00@gmail.com>
> Sent: Friday, February 12, 2021 10:39 AM
> To: Fujinaka, Todd <todd.fujinaka@intel.com>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary memory 
> reads
>
> I have some important details to add to this. It appears that ixgbe/ixgbevf are also affected. I have reviewed some older Intel based servers and some are showing the behavior as well.
>
> This is a non-AMD server showing the behavior on a different NIC:
> OS: CentOS 7.8
> Kernel: 4.19.107
> NIC: Intel Corporation Ethernet Controller 10G X550T
> Driver: ixgbe 5.1.0-k
> Vendor P/N: AOC-MTG-i2TM
> Firmware-version: 0x80000aee, 1.1876.0
> CPU: Intel(R) Xeon(R) Silver 4214 CPU
> MOBO: Supermicro X11DPT-PS
>
> The VM on the Intel box above is using kernel 4.19.163 with ixgbevf 
> 4.1.0-k
>
> This is a server with only 1 NIC (though bonding is still setup with only a single interface for simplification between builds), so I would assume that bonding isn't relevant to the bug. I will include the bonding configuration for the AMD servers below anyway in case you need it.
>
> For repro: I don't know how the issue begins or how to reproduce it on demand, it happens during normal VM use. I will describe our environment and go over various settings.
>
> Virtualization type: qemu-kvm
> Libvirt version: libvirt-daemon-kvm-4.5.0-36.el7_9.3.x86_6
> QEMU version: qemu-kvm-ev-2.12.0-44.1.el7_8.1.x86_64
>
> OS on both guest/host: CentOS 7.8+ (happens on 7.8 and 7.9) NIC bonding: Bonded and unbonded are affected. However, on bonded hosts, these options are used:
> GUEST: BONDING_OPTS="mode=2 miimon=100 xmit_hash_policy=1"
> HOST: BONDING_OPTS="mode=4 miimon=100 xmit_hash_policy=layer3+4"
>
> Bonding is setup in both the guest and host using the configuration above. 2 VF's are attached to the KVM guest for this.
>
> Here is the QEMU process on the AMD based server:
> qemu     35644  232  3.1 9678028 8432068 ?     SLl  Jan21 75000:17
> /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S 
> -object 
> secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-27-V
> MNAME-REDACTED/master-key.aes -machine 
> pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> -cpu 
> EPYC-IBPB,x2apic=on,tsc-deadline=on,hypervisor=on,tsc_adjust=on,clwb=o
> n,umip=on,spec-ctrl=on,stibp=on,ssbd=on,cmp_legacy=on,perfctr_core=on,
> monitor=off -m 8192 -realtime mlock=off -smp 
> 4,sockets=4,cores=1,threads=1 -uuid
> 6e201ba4-68fe-45be-a86d-fbc46cef5d46 -display none -no-user-config 
> -nodefaults -chardev socket,id=charmonitor,fd=55,server,nowait -mon 
> chardev=charmonitor,id=monitor,mode=control -rtc 
> base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet 
> -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> PIIX4_PM.disable_s4=1 -boot strict=on -device
> ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
> ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,
> addr=0x2 -device 
> ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> -device 
> ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive 
> file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=d
> rive-sata0-0-0,cache=none,discard=unmap
> -device 
> ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,writ
> e-cache=on
> -chardev pty,id=charserial0 -device
> isa-serial,chardev=charserial0,id=serial0 -device
> vfio-pci,host=81:03.5,id=hostdev0,bus=pci.0,addr=0x5 -device
> vfio-pci,host=81:0b.5,id=hostdev1,bus=pci.0,addr=0x6 -device
> virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox 
> on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=den
> y
> -msg timestamp=on
>
>
> Here is the QEMU process on the Intel based server:
> qemu     10058  157  8.1 9622376 8017812 ?     SLl  Jan25 40027:35
> /usr/libexec/qemu-kvm -name guest=VMNAME-REDACTED,debug-threads=on -S 
> -object 
> secret,id=masterKey0,format=raw,file=/var/lib/libvirt/qemu/domain-21-V
> MNAME-REDACTED/master-key.aes -machine 
> pc-i440fx-rhel7.6.0,accel=kvm,usb=off,dump-guest-core=off
> -cpu 
> Skylake-Server-IBRS,ss=on,hypervisor=on,tsc_adjust=on,clflushopt=on,um
> ip=on,pku=on,avx512vnni=on,md-clear=on,stibp=on,ssbd=on,xsaves=on,hle=
> off,rtm=off -m 8192 -realtime mlock=off -smp 
> 4,sockets=4,cores=1,threads=1 -uuid
> 6fc40d77-2872-4717-827b-de634b2a5609 -display none -no-user-config 
> -nodefaults -chardev socket,id=charmonitor,fd=31,server,nowait -mon 
> chardev=charmonitor,id=monitor,mode=control -rtc 
> base=utc,driftfix=slew -global kvm-pit.lost_tick_policy=delay -no-hpet 
> -no-shutdown -global PIIX4_PM.disable_s3=1 -global
> PIIX4_PM.disable_s4=1 -boot strict=on -device
> ich9-usb-ehci1,id=usb,bus=pci.0,addr=0x2.0x7 -device
> ich9-usb-uhci1,masterbus=usb.0,firstport=0,bus=pci.0,multifunction=on,
> addr=0x2 -device 
> ich9-usb-uhci2,masterbus=usb.0,firstport=2,bus=pci.0,addr=0x2.0x1
> -device 
> ich9-usb-uhci3,masterbus=usb.0,firstport=4,bus=pci.0,addr=0x2.0x2
> -device ahci,id=sata0,bus=pci.0,addr=0x3 -drive 
> file=/imgs/VMNAME-REDACTED/diskname-redacted,format=qcow2,if=none,id=d
> rive-sata0-0-0,cache=none,discard=unmap
> -device 
> ide-hd,bus=sata0.0,drive=drive-sata0-0-0,id=sata0-0-0,bootindex=1,writ
> e-cache=on
> -chardev pty,id=charserial0 -device
> isa-serial,chardev=charserial0,id=serial0 -device
> vfio-pci,host=18:11.0,id=hostdev0,bus=pci.0,addr=0x5 -device
> virtio-balloon-pci,id=balloon0,bus=pci.0,addr=0x4 -sandbox 
> on,obsolete=deny,elevateprivileges=deny,spawn=deny,resourcecontrol=den
> y
> -msg timestamp=on
>
>
> Lastly, I have attached some files:
> - The dmesg log from the VM with ixgbevf
> - The dmesg log from the VM with iavf
> - A time series graph for the AMD based server with iavf illustrating when the issue began. On the AMD-based server, spikes with dropped packets are normal, but a constant flow isn't. As you can see, a constant flow of dropped packets begins shortly after 2/06 @ 20:20 UTC.
> - A time series graph for the Intel based server with ixgbevf illustrating when the issue began. On the Intel based server, there's no drops whatsoever, and as soon as the null packet bug gets triggered, they spike and remain constant after 2/10 @ 9:00 UTC.
>
> I have analytics for almost everything network related (courtesy of Prometheus/node_exporter), so if you want insight on any other keys/values from the kernel or networking stack, please let me know and I'm happy to provide it.
>
> My thoughts currently: If this issue affects both iavf/ixgbevf, how much common code/logic is used between those drivers? I think it should help narrow things down a little more since it doesn't seem to be specific to a NIC or to iavf in particular.
>
> Thank you.
>
> On Fri, Feb 12, 2021 at 10:05 AM Fujinaka, Todd <todd.fujinaka@intel.com> wrote:
> >
> > The SW development team has taken a look at this and while they have some comments the next step is to get an internal repro.
> >
> > Please send the exact repro steps (including commands) including the configuration of bonding.
> >
> > They're also asking for the full dmesg from the time of boot.
> >
> > Thanks.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> > Of Fujinaka, Todd
> > Sent: Thursday, February 11, 2021 4:47 PM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; 
> > intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > memory reads
> >
> > Sorry, top-posting guy.
> >
> > I'm going to put this in our internal bug tracker to make sure it doesn't get lost.
> >
> > Todd Fujinaka
> > Software Application Engineer
> > Data Center Group
> > Intel Corporation
> > todd.fujinaka@intel.com
> >
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf 
> > Of Nguyen, Anthony L
> > Sent: Wednesday, February 10, 2021 6:31 PM
> > To: intel-wired-lan@lists.osuosl.org; jdtxs00@gmail.com
> > Subject: Re: [Intel-wired-lan] iavf null packets and arbitrary 
> > memory reads
> >
> > On Wed, 2021-02-10 at 14:56 -0600, JD wrote:
> > > Hello,
> > >
> > > I've encountered a NIC driver bug that leads to null packets being 
> > > transmitted and arbitrary/OOB memory reads by the iavf driver.
> > >
> > > I'm unfortunately not sure how the issue starts, but it has been 
> > > happening across many different AMD servers and virtual machines.
> > >
> > > Running a tcpdump (tcpdump -i bond0 -nne ether host
> > > 00:00:00:00:00:00)
> > > on bond0 results in these packets being produced at a high rate:
> > >
> > > 13:04:14.826298 00:00:00:00:00:00 > 00:00:00:00:00:00, 802.3, 
> > > length
> > > 0: LLC, dsap Null (0x00) Individual, ssap Null (0x00) Command, 
> > > ctrl
> > > 0x0000: Information, send seq 0, rcv seq 0, Flags [Command], 
> > > length
> > > 144
> > >         0x0000:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0010:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0020:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0030:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0040:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0050:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0060:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0070:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >         0x0080:  0000 0000 0000 0000 0000 0000 0000
> > > 0000  ................
> > >
> > >
> > > As you can see, they have a dest/src ether of 00:00:00:00:00:00 
> > > and are completely null.  This doesn't happen on every virtual 
> > > machine, some return absolutely nothing.
> > >
> > > If I filter the tcpdump command to ignore empty packets (all 
> > > dots), some other interesting items begin to appear:
> > >
> > >         0x0500:  0000 0000 0000 0029 0100 071b 0473 656c 
> > > .......).....sel
> > >         0x0510:  696e 7578 7379 7374 656d 5f75 3a6f 626a 
> > > inuxsystem_u:obj
> > >         0x0520:  6563 745f 723a 6269 6e5f 743a 7330
> > > 0000  ect_r:bin_t:s0..
> > > [...]
> > >         0x0080:  0000 2f75 7372 2f6c 6962 3634 2f70
> > > 6572  ../usr/lib64/per
> > >         0x0090:  6c35 2f76 656e 646f 725f 7065 726c
> > > 2f46  l5/vendor_perl/F
> > >         0x00a0:  696c 652f 5370 6563 2f55 6e69 782e 706d 
> > > ile/Spec/Unix.pm
> > >
> > > To me, that looks like it's reading data from memory and 
> > > attempting to send from 00:00:00:00:00:00 to 00:00:00:00:00:00.
> > >
> > > If I run that same tcpdump on a different servers exhibiting the 
> > > null packets, completely different items show up which also appear 
> > > to be from memory.
> > >
> > > Keeping a tcpdump results in the same items from memory being 
> > > repeated infinitely with no observable variation.
> > >
> > > So, it seems like the iavf driver is encountering some bug with 
> > > memory management and ends up transmitting null packets or 
> > > arbitrary data from memory over bond0.
> > >
> > > How/why did I notice this behavior? The VM's seem to perform worse 
> > > over the network when this occurs. They usually exhibit small 
> > > amounts of packet loss, or poor SSH responsiveness. Oddly, I have 
> > > seen this bug in the past, and it resulted in dmesg on the parent 
> > > printing Spoofed packet warnings for the i40e driver. Now it does 
> > > not, yet the null packets still occur.
> > >
> > > I would like to help in any way I can to resolve this in the 
> > > iavf/i40e driver. I'm happy to provide information from the 
> > > servers if it's needed.
> > >
> > > For reference, here is the setup on every single AMD server:
> > > VM:
> > > CentOS 7.9
> > > NIC driver: iavf 4.0.1
> > > Kernel 4.19.163
> > >
> > > KVM parent:
> > > CentOS 7.9
> > > NIC driver: i40e 2.12.6
> > > Kernel: 4.19.163
> > > 2x Intel XXV710 for 25GbE SFP28 @ 25Gbps BONDED (Mode 4, LACP)
> > > Vendor: Supermicro Network Adapter AOC-S25G-i2S Firmware version:
> > > 7.20
> > > 0x800082b3 1.2585.0
> > > MOBO: Supermicro H11DSU-iN
> > > CPU: AMD EPYC 7352
> > >
> > > And here is the dmesg log (grepped for iavf) from a server that 
> > > has the issue:
> > > iavf: loading out-of-tree module taints kernel.
> > > iavf: Intel(R) Ethernet Adaptive Virtual Function Network Driver - 
> > > version 4.0.1 iavf 0000:00:06.0: Multiqueue Enabled: Queue pair 
> > > count = 4 iavf 0000:00:06.0: MAC address: 52:54:00:7f:bc:39 iavf
> > > 0000:00:06.0: GRO is enabled iavf 0000:00:05.0: Multiqueue Enabled:
> > > Queue pair count = 4 iavf 0000:00:05.0: MAC address:
> > > 52:54:00:a6:3e:62 iavf 0000:00:05.0: GRO is enabled iavf
> > > 0000:00:06.0 eth0: NIC Link is Up Speed is 25 Gbps Full Duplex 
> > > iavf
> > > 0000:00:05.0 eth1: NIC Link is Up Speed is 25 Gbps Full Duplex
> > >
> >
> > Hi JD,
> >
> > I will check and see we're aware of this issue or have any information about it. If not, I'll see if we can work on a reproduction.
> >
> > Thanks,
> > Tony
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
