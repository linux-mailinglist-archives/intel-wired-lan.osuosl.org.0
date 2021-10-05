Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A38642337D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Oct 2021 00:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9F867403D3;
	Tue,  5 Oct 2021 22:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id txtVwk-E2ZUt; Tue,  5 Oct 2021 22:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BB1340288;
	Tue,  5 Oct 2021 22:28:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9662B1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86617404CE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1fa02Q14MIf for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 22:28:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C46BB404C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 22:28:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="312076916"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="312076916"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 15:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="439691187"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 05 Oct 2021 15:27:55 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 15:27:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 15:27:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 15:27:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AnRliGqZuk08QzckjzryEVdjger/GFHCJWk5UaOdz1sVMxI+iPr+LskR715+3whvREo6wY5YtlcEn4xPPXy2n31RUPZVsUsCOVNZfO6LqIQi1L+Q0/5mtlK7WlmlQz8tToDFrerJXJLeFD8b0VpO03Ch6zmn+GoYG6Z52b6/kt+dfN4Gb1+lnjSebBc1VLuernHTzl+JhGKhR8kVjof2jVaLlOe61ctZLy8mzL5uCrvePeFVoqbAPxCi12CLCr8idAFUOL48m592vk7LBS8y3b+x1gXRj3sxzT7prcTABRGHU3SWDsP8XxFi0AFS7s3btunPQhguHoZ4kytNk5A3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+ZXqJ1H6B1PnwW6L4/iYnzcQQ4XkQPbqt0SshdY9NU=;
 b=PolLmbEIWOAuCPyCW5q5euN6XNPdWWooNFtoQcJwWHgjA7qNHveHYnfV/m9x3tr5zv8px04bkZsRSxFzc9/TA2yIY/UGmA8ZMv/eFhymMdrpNEGl6poPH7qg9/E/Sl/uIXaztzLAyhWQ6NF5XNcRBuE0DpyvgDdAcgh8DqzjOCS7eFhW93u38m8OBeCs8cRVhkyK5GJ7FENRVCKSPXa0c3Sgw7H+7jy6ghiCTk/YrHOcQcGOEadJEFXkDOZtxJ4u/KpfGrH39PShlxrGbfYdcCh/c2cvxZjoDQ/arD7SCyVYzGERynyih3djW9eKB7z+VXZdZAdNez5NMVZIEuSiLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+ZXqJ1H6B1PnwW6L4/iYnzcQQ4XkQPbqt0SshdY9NU=;
 b=YqDw5zfbUvD3brroQArMqySOYqvnz8CqXQabuDsvnwbSHFCM/HYM5cbkhAHBbg1vXGxuxsjz9BppDisQ44LCkIAI100NGmwAm6dXARVrbm/X0aBghPv/xTm+NVHJrONqYt88Ei3ljWvNaJOlF+yp48invseOcpgN0rKmBF/bpto=
Authentication-Results: wp.pl; dkim=none (message not signed)
 header.d=none;wp.pl; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB1982.namprd11.prod.outlook.com (2603:10b6:300:10f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 22:27:53 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::f49e:f942:1fe9:cbe4]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::f49e:f942:1fe9:cbe4%7]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 22:27:52 +0000
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: "Andreas K. Huettel" <andreas.huettel@ur.de>, Paul Menzel
 <pmenzel@molgen.mpg.de>
References: <1823864.tdWV9SEqCh@kailua>
 <20211004074814.5900791a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <35dfc9e8-431c-362d-450e-4c6ac1e55434@molgen.mpg.de>
 <2944777.ktpJ11cQ8Q@pinacolada>
Message-ID: <c75203e9-0ef4-20bd-87a5-ad0846863886@intel.com>
Date: Tue, 5 Oct 2021 15:27:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <2944777.ktpJ11cQ8Q@pinacolada>
Content-Language: en-US
X-ClientProxiedBy: MWHPR17CA0085.namprd17.prod.outlook.com
 (2603:10b6:300:c2::23) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 MWHPR17CA0085.namprd17.prod.outlook.com (2603:10b6:300:c2::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.15 via Frontend Transport; Tue, 5 Oct 2021 22:27:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 126adc91-39af-4c7e-c5c9-08d9884f5f07
X-MS-TrafficTypeDiagnostic: MWHPR11MB1982:
X-Microsoft-Antispam-PRVS: <MWHPR11MB198240F9A1E409C8B33CFBDD97AF9@MWHPR11MB1982.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ezNGgWAx7HjFXG+MkZDQsPhwxnsZTfi7Rk3BP7WhzdIq5T6f2XA+EVbr8dqjdrS+APKgfP/l95b3gYeJG631rl43DUVcPZIMW9MZejNQ/XrNbeJVpEKawEx1qFjoYRI98yXBpfDmueyYQjaCuXccdeolNYbLzuyzWMljx/R/DkTU+5k36oA4A/ZE6CCgx5JjIFfYnHT1B51lYMuR/qn1NPZkin1Prh4Yugln/FDtIvLBYvessY/2l1sR/OpefZGXmDAVWvONmrwagY4Ij8dc02bGYmmQq4ipHhJJKzFBPUe5XnjfAvtBj+njZDzhlowC5KZSYaOeSNfcZdOdw6c+wnPL7ZAv3HutXG0h9GJwY194THSyUqYpHbd2DGDyV0R4CJ5oTyfDQGxKLnxId78jgQyOz3mczhgQ8I2zjey/GQvVB1nFep/nWu0iiVEPRlToVUQIrwR8Egc7/H51iV8G1CvUicBsuKbRcsbqSUHaTXBYXdn0/ZLMZdbMq5Heg9ShUw+kFJ1+Cnnce6MC3cnvpb8DxBG2swIt6rGs5PtS0NtAwaJQzBtRH6truccgGUh4Y5O1yvDayR/DzgyMkY9oQcTBLlY3VF0pBkbHrzQxYnlztoOUH/2kReWWCB6oqKGUSR7RBXq4uoDDDyh9h2S9nQ2htMtgb7Ko9nfA/AGE/C9alKkZXsQ6jqMteklbRTHJZoVwJkBes0hM9UoduyD4FUMsO4AFeFBH82oFFV3vAiYBFsG81MNDzSyDq/v4hso9B2mpIAv0Kzeoq5AjbPfOL4Maqu4AWfWPCvMpAM9/6oqu2JTi0O7bOCa4zBzNjuLq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(16576012)(2906002)(508600001)(31696002)(966005)(66946007)(45080400002)(66476007)(4326008)(26005)(316002)(8676002)(66556008)(44832011)(186003)(956004)(110136005)(83380400001)(53546011)(86362001)(6486002)(2616005)(5660300002)(31686004)(8936002)(36756003)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHZKRU0xQm5QR0VNUURMT1oya2RBNlovOWxSNzJ3VW1pTTIyMDQvdDNqOFlL?=
 =?utf-8?B?TjJKUkIyRVFXcklkeEp0YUtsbHFiak81R2orMUlIdzk5RElITUtDU3VLVHpC?=
 =?utf-8?B?SHpHemcwaW5wOVo1dHFyVHBKTUEwTFR3RENCQjFobFFiYzljUHl4aThnY1V3?=
 =?utf-8?B?bGV3TSs4Y0xaTzF4R1lOTEFMUXdBYml6Z21uYVdQMndFa1c0WG5sZDV5ZFBT?=
 =?utf-8?B?aXdPNk5TbGEvV09kQTkrQmwrcUFqZ2dwOTRFZmJKayt5TkdwSnhZTzduYkVh?=
 =?utf-8?B?SVFUQ3ZCTmNyQzlFUVVnSzNvNmYvSGFoK3JSMGpQTVI5T21iazA5MTFIRWFS?=
 =?utf-8?B?K3lVaGxZSXpKM1hxbCsrU3lXbHlOU01KRFl6d1NyZW82MmZnUDFuNDJBcTBu?=
 =?utf-8?B?bTJkekFiTjdVREgzWHArdVQ1RDV1VTZDKzJqZGpvdEttSGhmK2d5SUVFZGlP?=
 =?utf-8?B?alY2cldKSEszQ0duOGhqVW9sTDRmR0hOdEk3eVVpVDkwR0JGSEdKQTZ5NERo?=
 =?utf-8?B?a3MrQ3BCRjgvczE4MnZoMmlQbUF6VDIwaytqcnhwUlg0Y3RXYjZUQU1ZUzlw?=
 =?utf-8?B?Ti9jSStJUkZObktVV1N2UkZpZEt5Ym5lKzU3cUJaTkZBRDlEbmlOM0UrcHBj?=
 =?utf-8?B?Z3JRcTRvYUNtcUpOOVpDL3VsNFRhTHR2eWdTeTZRK3VwTHRRZ0o5ZWpaZ0o4?=
 =?utf-8?B?TlBETXEvbjYxYU1URCtTSTd5TnVaSUp3SnQ1ZW1UZjNubzZhb1RMV2d1bjV3?=
 =?utf-8?B?SldFWm5tUXh2aENaUFYva0FZWWJBbldWNU5obTR1blJILzVPcDRiWXFFemNK?=
 =?utf-8?B?MUlRL1lxeFdVVkNJSDVhVHpMUXBHRElXcUJmRkpBWUs1UVA1MlZIYjZmaDFR?=
 =?utf-8?B?UlRoNTNzN2UxNVVwSHc4TkZ0ekZKLzNLNTM3TUQ3aUJXYlhqa2laTGVmVjdQ?=
 =?utf-8?B?Ritrbi84TEdGVkFtblZSTmZlVlRkVDJzVlk2YW9vOW9pMk5XTXlYMTJWUUdU?=
 =?utf-8?B?c3JkWXNwSStFK3ZONzA5V0kra1Z2Q3JTTTJpZTJ1dE9uM0tGcGJnb3lvMG5T?=
 =?utf-8?B?WW9ZUU1XaGFCTVlxTkdmMy9LMi81alJQU3l4MGVGQXpxNXhOMzQvSTVrdjdu?=
 =?utf-8?B?L1dkSjlaNUgvaFZ4Q25JU09TaUh4Mm5HYmo4THE3ZnhUMG9vM2JyZm84bXFa?=
 =?utf-8?B?ajFKMGFkRnpKMThua2o5SnRJK2Z2eDhVMW5mTzV2cWZHNWxNUkpQQSt2Mk9K?=
 =?utf-8?B?cXZVdXYweEZnRTVWb0F3c1ZFeDhCd1YvOHhXbDV4bVNaYjRhUmdrZ05LZHJ0?=
 =?utf-8?B?SzFxQ2R3WEJWdk5NMWFrUEtNUlEzOW1XV3p5ZlVLODZDY3pTV0xiTCtPNnMw?=
 =?utf-8?B?R3JaMWRXQTY5VXQ2ckxTYlJGdXVxaWlmcE5jMWptc3h1cGg2UG4vZDFZZ2xS?=
 =?utf-8?B?V3FTRUIrdWV5cGh4akplQUk5cG9qYldIZEpaN2NrYUUxUVBHUlIwNE5CV0dp?=
 =?utf-8?B?MkFVWkJiSWNPYnFBQkFlRDVQWnN2cnBEL3k5STA0SjVPc1pHMmV0cUdRVjI3?=
 =?utf-8?B?SHR6VHc3cDg2ZDlrMXFaVHBGMHRIRjUxREwxMENQbXdrSUJTbTR1ZjY4OHJL?=
 =?utf-8?B?aE0rM0VsdVM2dVRYYXdJUTR1MW51eCs1eVNlRi9rWVhGZVA2NnhVc2wwd2Fu?=
 =?utf-8?B?c3FyaGVNY0ZZZ3JwWmJnTUs3TTlWTFFWZEVoYTNjeVpEMTRXVTZnWTkwVEdM?=
 =?utf-8?Q?cZiEq3+venMwdcs8KF8tVKSAJhMWpCpAYuSEfht?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 126adc91-39af-4c7e-c5c9-08d9884f5f07
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2021 22:27:52.8879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LVKf8w2lmTXzkrkHwstjLSa9amEwv5Yafk36VApydt7UItiAMXwtAUJmzjozYwEFEhblXGDE4seINK9FZWfphwzo9X9pfihJ7kPpFyFNImM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1982
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [EXT] Re: Intel I350 regression 5.10 -> 5.14
 ("The NVM Checksum Is Not Valid") [8086:1521]
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
Cc: Jakub Kicinski <kubakici@wp.pl>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvNS8yMDIxIDY6NDMgQU0sIEFuZHJlYXMgSy4gSHVldHRlbCB3cm90ZToKPj4KPj4gV2hh
dCBtZXNzYWdlcyBhcmUgbmV3IGNvbXBhcmVkIHRvIHRoZSB3b3JraW5nIExpbnV4IDUuMTAuNTk/
Cj4+Cj4gCj4gSSd2ZSB1cGxvYWRlZCB0aGUgZnVsbCBib290IGxvZ3MgdG8gaHR0cHM6Ly9kZXYu
Z2VudG9vLm9yZy9+ZGlsZnJpZGdlL2lnYi8KPiAoYm90aCBpbiBhIHZlcnNpb24gd2l0aCBhbmQg
d2l0aG91dCB0aW1lc3RhbXBzLCBmb3IgZWFzeSBkaWZmKS4KPiAKPiAqIEkgY2FuJ3Qgc2VlIGFu
eXRoaW5nIHRoYXQgaW1tZWRpYXRlbHkgcG9pbnRzIHRvIHRoZSBpZ2IgZGV2aWNlIChsaWtlIGEg
UENJIGlkIGV0Yy4pIGJlZm9yZSB0aGUgbW9kdWxlIGlzIGxvYWRlZC4gCj4gKiBUaGUgbWFpbiBk
aWZmZXJlbmNlIGJldHdlZW4gdGhlIGxvZ3MgaXMgbWFueSB1bnJlbGF0ZWQgKD8pIGk5MTUgd2Fy
bmluZ3MgaW4gNS4xMC41OSBiZWNhdXNlIG9mIHRoZSBub25mdW5jdGlvbmFsIGdyYXBoaWNzLgo+
IAo+IFRoZSBtZXNzYWdlcyBlYXNpbHkgaWRlbnRpZmlhYmxlIGFyZToKPiAKPiBodWV0dGVsQHBp
bmFjb2xhZGEgfi90bXAgJCBjYXQga2VybmVsLW1lc3NhZ2VzLTUuMTAuNTkudHh0IHxncmVwIGln
Ygo+IE9jdCAgNSAxNToxMToxOCBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDIuMDkwNjc1XSBpZ2I6
IEludGVsKFIpIEdpZ2FiaXQgRXRoZXJuZXQgTmV0d29yayBEcml2ZXIKPiBPY3QgIDUgMTU6MTE6
MTggZGlsZnJpZGdlIGtlcm5lbDogWyAgICAyLjA5MDY3Nl0gaWdiOiBDb3B5cmlnaHQgKGMpIDIw
MDctMjAxNCBJbnRlbCBDb3Jwb3JhdGlvbi4KPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdlIGtl
cm5lbDogWyAgICAyLjA5MDcyOF0gaWdiIDAwMDA6MDE6MDAuMDogZW5hYmxpbmcgZGV2aWNlICgw
MDAwIC0+IDAwMDIpCgpUaGlzIGxpbmUgaXMgbWlzc2luZyBiZWxvdywgaXQgaW5kaWNhdGVzIHRo
YXQgdGhlIGtlcm5lbCBjb3VsZG4ndCBvcgpkaWRuJ3QgcG93ZXIgdXAgdGhlIFBDSWUgZm9yIHNv
bWUgcmVhc29uLiBXZSdyZSBsb29raW5nIGZvciBzb21ldGhpbmcKbGlrZSBBQ1BJIG9yIFBDSSBw
YXRjaGVzIChwb3NzaWJseSBQQ0ktUG93ZXIgbWFuYWdlbWVudCkgdG8gYmUgdGhlCmN1bHByaXQg
aGVyZS4KCgo+IE9jdCAgNSAxNToxMToxOCBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDIuMDk0NDM4
XSBNb2R1bGVzIGxpbmtlZCBpbjogaWdiKCspIGk5MTUoKykgaW9zZl9tYmkgYWNwaV9wYWQgZWZp
dmFyZnMKPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdlIGtlcm5lbDogWyAgICAyLjA5NzI4N10g
TW9kdWxlcyBsaW5rZWQgaW46IGlnYigrKSBpOTE1KCspIGlvc2ZfbWJpIGFjcGlfcGFkIGVmaXZh
cmZzCj4gT2N0ICA1IDE1OjExOjE4IGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi4wOTg0OTJdIE1v
ZHVsZXMgbGlua2VkIGluOiBpZ2IoKykgaTkxNSgrKSBpb3NmX21iaSBhY3BpX3BhZCBlZml2YXJm
cwo+IE9jdCAgNSAxNToxMToxOCBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDIuMDk4Nzg3XSBNb2R1
bGVzIGxpbmtlZCBpbjogaWdiKCspIGk5MTUoKykgaW9zZl9tYmkgYWNwaV9wYWQgZWZpdmFyZnMK
PiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdlIGtlcm5lbDogWyAgICAyLjE3MzM4Nl0gaWdiIDAw
MDA6MDE6MDAuMDogYWRkZWQgUEhDIG9uIGV0aDAKPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdl
IGtlcm5lbDogWyAgICAyLjE3MzM5MV0gaWdiIDAwMDA6MDE6MDAuMDogSW50ZWwoUikgR2lnYWJp
dCBFdGhlcm5ldCBOZXR3b3JrIENvbm5lY3Rpb24KPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdl
IGtlcm5lbDogWyAgICAyLjE3MzM5NV0gaWdiIDAwMDA6MDE6MDAuMDogZXRoMDogKFBDSWU6NS4w
R2IvczpXaWR0aCB4NCkgNmM6YjM6MTE6MjM6ZDQ6NGMKPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJp
ZGdlIGtlcm5lbDogWyAgICAyLjE3Mzk5MV0gaWdiIDAwMDA6MDE6MDAuMDogZXRoMDogUEJBIE5v
OiBINDc4MTktMDAxCj4gT2N0ICA1IDE1OjExOjE4IGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi4x
NzM5OTRdIGlnYiAwMDAwOjAxOjAwLjA6IFVzaW5nIE1TSS1YIGludGVycnVwdHMuIDggcnggcXVl
dWUocyksIDggdHggcXVldWUocykKPiBPY3QgIDUgMTU6MTE6MTggZGlsZnJpZGdlIGtlcm5lbDog
WyAgICAyLjE3NDE5OV0gaWdiIDAwMDA6MDE6MDAuMTogZW5hYmxpbmcgZGV2aWNlICgwMDAwIC0+
IDAwMDIpCj4gT2N0ICA1IDE1OjExOjE4IGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi4yNjEwMjld
IGlnYiAwMDAwOjAxOjAwLjE6IGFkZGVkIFBIQyBvbiBldGgxCj4gT2N0ICA1IDE1OjExOjE4IGRp
bGZyaWRnZSBrZXJuZWw6IFsgICAgMi4yNjEwMzRdIGlnYiAwMDAwOjAxOjAwLjE6IEludGVsKFIp
IEdpZ2FiaXQgRXRoZXJuZXQgTmV0d29yayBDb25uZWN0aW9uCj4gT2N0ICA1IDE1OjExOjE4IGRp
bGZyaWRnZSBrZXJuZWw6IFsgICAgMi4yNjEwMzhdIGlnYiAwMDAwOjAxOjAwLjE6IGV0aDE6IChQ
Q0llOjUuMEdiL3M6V2lkdGggeDQpIDZjOmIzOjExOjIzOmQ0OjRkCj4gT2N0ICA1IDE1OjExOjE4
IGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi4yNjE3NzJdIGlnYiAwMDAwOjAxOjAwLjE6IGV0aDE6
IFBCQSBObzogSDQ3ODE5LTAwMQo+IE9jdCAgNSAxNToxMToxOCBkaWxmcmlkZ2Uga2VybmVsOiBb
ICAgIDIuMjYxNzc2XSBpZ2IgMDAwMDowMTowMC4xOiBVc2luZyBNU0ktWCBpbnRlcnJ1cHRzLiA4
IHJ4IHF1ZXVlKHMpLCA4IHR4IHF1ZXVlKHMpCj4gT2N0ICA1IDE1OjExOjE4IGRpbGZyaWRnZSBr
ZXJuZWw6IFsgICAgMi4yNjUzNzZdIGlnYiAwMDAwOjAxOjAwLjEgZW5wMXMwZjE6IHJlbmFtZWQg
ZnJvbSBldGgxCj4gT2N0ICA1IDE1OjExOjE4IGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi4yODI1
MTRdIGlnYiAwMDAwOjAxOjAwLjAgZW5wMXMwZjA6IHJlbmFtZWQgZnJvbSBldGgwCj4gT2N0ICA1
IDE1OjExOjMxIGRpbGZyaWRnZSBrZXJuZWw6IFsgICAxNy41ODUyMDJdIGlnYiAwMDAwOjAxOjAw
LjAgZW5wMXMwZjA6IGlnYjogZW5wMXMwZjAgTklDIExpbmsgaXMgVXAgMTAwMCBNYnBzIEZ1bGwg
RHVwbGV4LCBGbG93IENvbnRyb2w6IFJYCj4gCj4gaHVldHRlbEBwaW5hY29sYWRhIH4vdG1wICQg
Y2F0IGtlcm5lbC1tZXNzYWdlcy01LjE0LjkudHh0IHxncmVwIGlnYgo+IE9jdCAgNSAwMjozODoz
MSBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDIuMTA4NjA2XSBpZ2I6IEludGVsKFIpIEdpZ2FiaXQg
RXRoZXJuZXQgTmV0d29yayBEcml2ZXIKPiBPY3QgIDUgMDI6Mzg6MzEgZGlsZnJpZGdlIGtlcm5l
bDogWyAgICAyLjEwODYwOF0gaWdiOiBDb3B5cmlnaHQgKGMpIDIwMDctMjAxNCBJbnRlbCBDb3Jw
b3JhdGlvbi4KPiBPY3QgIDUgMDI6Mzg6MzEgZGlsZnJpZGdlIGtlcm5lbDogWyAgICAyLjEwODYy
Ml0gaWdiIDAwMDA6MDE6MDAuMDogY2FuJ3QgY2hhbmdlIHBvd2VyIHN0YXRlIGZyb20gRDNjb2xk
IHRvIEQwIChjb25maWcgc3BhY2UgaW5hY2Nlc3NpYmxlKQoKVGhpcyBpcyByZWFsbHkgdGhlIG9u
bHkgbWVzc2FnZSB0aGF0IG1hdHRlcnMuIEl0IGluZGljYXRlcyB0aGUgY29uZmlnCnNwYWNlIGlz
IGluYWNjZXNzaWJsZSwgYW5kIGZyb20gdGhlIHN5c3RlbS9rZXJuZWwncyBwZXJzcGVjdGl2ZSwg
dGhlCmRldmljZSBpcyB1bnBsdWdnZWQgb3Igbm90IHJlc3BvbmRpbmcsIG9yIGluIGEgUENJZSBw
b3dlciBzdGF0ZS4KCgo+IE9jdCAgNSAwMjozODozMSBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDIu
MTA4OTE4XSBpZ2IgMDAwMDowMTowMC4wIDAwMDA6MDE6MDAuMCAodW5pbml0aWFsaXplZCk6IFBD
SWUgbGluayBsb3N0Cj4gT2N0ICA1IDAyOjM4OjMxIGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgMi40
MTg3MjRdIGlnYiAwMDAwOjAxOjAwLjA6IFBIWSByZXNldCBpcyBibG9ja2VkIGR1ZSB0byBTT0wv
SURFUiBzZXNzaW9uLgo+IE9jdCAgNSAwMjozODozMSBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDQu
MTQ4MTYzXSBpZ2IgMDAwMDowMTowMC4wOiBUaGUgTlZNIENoZWNrc3VtIElzIE5vdCBWYWxpZAo+
IE9jdCAgNSAwMjozODozMSBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDQuMTU0ODkxXSBpZ2I6IHBy
b2JlIG9mIDAwMDA6MDE6MDAuMCBmYWlsZWQgd2l0aCBlcnJvciAtNQo+IE9jdCAgNSAwMjozODoz
MSBkaWxmcmlkZ2Uga2VybmVsOiBbICAgIDQuMTU0OTA0XSBpZ2IgMDAwMDowMTowMC4xOiBjYW4n
dCBjaGFuZ2UgcG93ZXIgc3RhdGUgZnJvbSBEM2NvbGQgdG8gRDAgKGNvbmZpZyBzcGFjZSBpbmFj
Y2Vzc2libGUpCj4gT2N0ICA1IDAyOjM4OjMxIGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgNC4xNTUx
NDZdIGlnYiAwMDAwOjAxOjAwLjEgMDAwMDowMTowMC4xICh1bmluaXRpYWxpemVkKTogUENJZSBs
aW5rIGxvc3QKPiBPY3QgIDUgMDI6Mzg6MzEgZGlsZnJpZGdlIGtlcm5lbDogWyAgICA0LjQ2Njkw
NF0gaWdiIDAwMDA6MDE6MDAuMTogUEhZIHJlc2V0IGlzIGJsb2NrZWQgZHVlIHRvIFNPTC9JREVS
IHNlc3Npb24uCj4gT2N0ICA1IDAyOjM4OjMxIGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgNi4xOTU1
MjhdIGlnYiAwMDAwOjAxOjAwLjE6IFRoZSBOVk0gQ2hlY2tzdW0gSXMgTm90IFZhbGlkCj4gT2N0
ICA1IDAyOjM4OjMxIGRpbGZyaWRnZSBrZXJuZWw6IFsgICAgNi4yMDA4NjNdIGlnYjogcHJvYmUg
b2YgMDAwMDowMTowMC4xIGZhaWxlZCB3aXRoIGVycm9yIC01Cj4gCj4gCj4+Pj4gQW55IGFkdmlj
ZSBvbiBob3cgdG8gcHJvY2VlZD8gV2lsbGluZyB0byB0ZXN0IHBhdGNoZXMgYW5kIHByb3ZpZGUg
YWRkaXRpb25hbCBkZWJ1ZyBpbmZvLgo+Pgo+PiBXaXRob3V0IGFueSBpZGVhcyBhYm91dCB0aGUg
aXNzdWUsIHBsZWFzZSBiaXNlY3QgdGhlIGlzc3VlIHRvIGZpbmQgdGhlIAo+PiBjb21taXQgaW50
cm9kdWNpbmcgdGhlIHJlZ3Jlc3Npb24sIHNvIGl0IGNhbiBiZSByZXZlcnRlZC9maXhlZCB0byBu
b3QgCj4+IHZpb2xhdGUgTGludXjigJkgbm8tcmVncmVzc2lvbiBwb2xpY3kuCj4gCj4gSSdsbCBz
dGFydCBnb2luZyB0aHJvdWdoIGtlcm5lbCB2ZXJzaW9ucyAoYW5kIGxhdGVyIHJldmlzaW9ucykg
ZW5kIG9mIHRoZSB3ZWVrLgoKVGhhbmsgeW91IGZvciBoZWxwaW5nIHRoZSBjb21tdW5pdHkgZmln
dXJlIG91dCB3aGF0IGlzIHVwIGhlcmUuIEkgZG9uJ3QKYmVsaWV2ZSB0aGF0IGl0IGlzIGEgZHJp
dmVyIGJ1Zy9jaGFuZ2UgdGhhdCBicm9rZSB0aGluZ3MsIGJ1dCBhbnl0aGluZwppcyBwb3NzaWJs
ZS4gOi0pIEdpdmVuIHdoYXQgSSBzYXcgYWJvdmUgSSB3b25kZXIgaWYgeW91IHNob3VsZCB0cnkg
dG8KYm9vdCB3aXRoIHBjaV9hc3BtPW9mZgoKVGhlIGJlc3Qgb3B0aW9uIGlzIGEgYmlzZWN0IHVz
aW5nIGdpdCwgYnV0IGl0IHdpbGwgaGVscCB0byBuYXJyb3cgdGhpbmdzCmRvd24gdG8gYSBjb3Vw
bGUgZGlmZmVyZW50IGtlcm5lbCB2ZXJzaW9ucyBpZiB0aGF0IGlzIHRoZSBvbmx5IG9wdGlvbgp5
b3UgaGF2ZS4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
