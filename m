Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 177F83660BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Apr 2021 22:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D86483D28;
	Tue, 20 Apr 2021 20:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7csadOhh-LJj; Tue, 20 Apr 2021 20:18:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D51B83D16;
	Tue, 20 Apr 2021 20:18:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C0B11BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:16:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2A2CC402F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:16:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FmnRzjF2yFoK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Apr 2021 20:16:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 587C24047E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Apr 2021 20:16:00 +0000 (UTC)
IronPort-SDR: gNhomMgo8Kamr/cu9d+ixHEvtbPVTFYDBCs4orDZG3WMsVTjpoBb93ReU05dnbRmrTM49xAScE
 qZfMjeWnphGw==
X-IronPort-AV: E=McAfee;i="6200,9189,9960"; a="216207931"
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="216207931"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 13:15:59 -0700
IronPort-SDR: VsX9PNqRv4/vjzJTX4ZVWi985u6eyZt+f1uFTpVvZ5Ez4E50OFWzhtK1UPDLL45GIQ/hW+mbLN
 W1QqUfS6a9TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,237,1613462400"; d="scan'208";a="385474728"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 20 Apr 2021 13:15:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 13:15:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 20 Apr 2021 13:15:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 20 Apr 2021 13:15:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 20 Apr 2021 13:15:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFVpclLhvf94/rpXCnmzX6Ed6mm5mCTDIoaw9rZwvAif6ThqbgEbuJHNMw3l1ouVQ1m2D7Iz+ZW3vuWvTFWbhlCP7RMPJYIpNt7PGrNVhh6sBVQzRUTgO1p9Jor/iyOZaIxWdpdeweLstoj3y6T0b5OJyzjRe9HqwjtNO1SU2PAiQ92XRw4v4I/QOqx823CQmzA22UzQo622LuAJuwy1GQv1iZmhr5AzjmjStw+7shkRMchU2xuipHAm/XJT4/dxsFCfNslrj+8E/Uf2dq+oTz/Qo+Lrysw1Dhwj/XsZTEGmJxCjmVH51xwsw+r2M+fi00cqmvn5RqZ220XR7AhNvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tZGLGSyxoGqWKPeKos3kBJ4bl0R4bW30gdvJbpAVYz0=;
 b=NwjyI1W59F3wiW4ITqut7HDPfVDbl2UY7S0SGhbTfUKaWMsBcthDZjZYVCJCYKU1SFcKQ+fXjoQTIz3lcc8gmdDq+zyvx0JYM4K/357HnZATDDqsyiu7q+fqIqxD3QxQmxJKW4rGzP5DOfj63REqoZfnF1ZQj6MasP4EAikxJVlpvxKpZBcEXc6t/nhi1LxxmzZRIa3tGhy4+XZM9DBJo7qNFJCaUeN4dBMGAb/5KKB7wCW+RiCUe0svFFBujbUQ/Da47FbdoG1+9+C+8Oy5G4c5H8pm6Z7vaG2QwF4HOl33KAgmp7fgLQ6uGmO6g27TkjiHa347STYIGhNJNXTUKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tZGLGSyxoGqWKPeKos3kBJ4bl0R4bW30gdvJbpAVYz0=;
 b=ZRPEqXj8cnDhh0+6XgcBxMs36CEDSG9Pwmcg2Rl+0hvXkl1mKlZjPJ/rUzsyLn413RFo8CbU3ytaF7RFRWBBl+rfygXPC+T3iTG1oZaoXK4d6GGYAp/24dNESGvEQcf3xiGVyh/5zddim0eEOoa0oVAF+2YEx7SQtDsjMpG2Rok=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Tue, 20 Apr
 2021 20:15:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 20:15:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [net] igb: Check if num of q_vectors is
 smaller than max before array access.
Thread-Index: AQHXMuIa1apdJTnfBE+SA4aYUUObt6q93aGA
Date: Tue, 20 Apr 2021 20:15:57 +0000
Message-ID: <d5321d7573217a51ee8bc2402db48a068cebb252.camel@intel.com>
References: <20210416165952.24401-1-aleksandr.loktionov@intel.com>
In-Reply-To: <20210416165952.24401-1-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83a6e32e-b9eb-4a92-19b9-08d904391bf3
x-ms-traffictypediagnostic: SA2PR11MB4778:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4778FBB1003EE4AE58868E4BC6489@SA2PR11MB4778.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kbW7B9iu5sGouG2mrM8TriY0S9iW6ps3t6zPE9ced2JFIIPt/F81h0zKe/mwdmCsZPpTfJcMzIvinb0RlgzTsaMJcLMlgFo7YGqo8YFqE8WvTa9f7shcOeayMSj6hA1YIkkRL8R6lLkXSncZDcZ5uo2429Vq8O6gkLitvLce0J5cDNgstD/hWGoeLoWZng2ahhspQosYHL6E09LD8GbZbmLCLKAT+89RVBySM7UA8wzeWsc907y2iquZRLhTVbm1oZYDL+wSo3hbUpRm/kQAktN9ZalSaCE78gEk7zGlf1tBIgaevtsT3F+i2a5ggyGrXjdkr5iWHUstNPBYmSvT2yfps90z0zNLlTIHFOv2dCBGJlnHYU6Xrp9ySaOmz247JHVy+srG13qV4f4ila+RSdoeXXFzTZuEECE1AdAI0VFVUWzgGCThxw1T6U6LTvjLOwUQX9PSAjWXFCE7R1YYa8dAaHssb4az1VmpZ6kzZomIz5GeCODalwsK+23gigZs0BWGiwhuwEqBQZlru3nU0xYPCVmymuxcLXmatZb547XeSBUyvbrayAutBqGtcj0tAB2SNtE6K4cldyb8ZiwgGZcLe9jj7tkYZt6HWB1fKAda3oSQj8NkI08eJ5kdzzDrWBVRARhcFQGDAYa4mRvEKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(346002)(366004)(376002)(6486002)(86362001)(66446008)(8936002)(91956017)(5660300002)(38100700002)(122000001)(4744005)(478600001)(2906002)(8676002)(66476007)(6506007)(6636002)(186003)(110136005)(76116006)(2616005)(66946007)(83380400001)(6512007)(64756008)(66556008)(36756003)(71200400001)(316002)(26005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SDFwNzN0WTU1QlNsVnB4UWhQc3FYMVluenNJUTZFR3JxRTlmWUxmM0lydHJh?=
 =?utf-8?B?MEZIWEJIU0ZqdzV6RFhiR2xNUDcxQjZDL0orSWxiNlJpelpOdWtmdGhZVDAr?=
 =?utf-8?B?YUltZnMvcjREVmU4MXQySFNOTTV5M00xZ2tEejlza0hJb1RoU1pqYXpjZXo3?=
 =?utf-8?B?VFFEVjB6cUMzbXhRWFF2cFpyWng0bStzS3cvU3J5MEhsNHIyOStOTWFJc0pj?=
 =?utf-8?B?WTRzQ2JVWERRTkNLUzF1RStsK2Q4ZmZMRUJma2Z5dzRBUWs1V0RRQ2dRNXBL?=
 =?utf-8?B?dUluaW1kL2tIcDBERXpmRTl3ZkJyR0RVZFNMV2ZVZmtKd0RiUStsUkNoZmVC?=
 =?utf-8?B?SXJCUzhJcUxKSlU0dWY3UHY5UlFTbjF0a2p2Qy90M3Frek9vSnVtV3duR0dz?=
 =?utf-8?B?R1U1VU1yRzdkSS9SNXRhTzVndnh0VDNyeWxydmprL200QU1ZNXZXd2lCekt6?=
 =?utf-8?B?eFEwQU9PWFJWOHBBUllycVFGbklRWFhkK3J3WDYzdS9mcVFWM2dkcEszVlhT?=
 =?utf-8?B?OVl6RGswME1HNlRpdDA3ZU5ydGdEaEFuMVQ5cno4ek14YXBxQW9hWmRZY09W?=
 =?utf-8?B?WkdzdXlKeGNhNm5yQ2FkdlhicmxPL0c5TkNqODdFM0xrWEk0ekhSYnFEZFps?=
 =?utf-8?B?dXN0NlhxNEtYbDdzTUxoYmpqR3VnM2lpMDNNb0lwYlJFLzRGc0pFSHd0VUN2?=
 =?utf-8?B?T1hZOFlIK0tUK0RncElVR0g5L2dVb0hxYUFLdGhxVER2T1BlMnM1dEVVMzRP?=
 =?utf-8?B?dmhGU2M5eXBTOVVuakVrVERZeEMyS0h5SU1OSlpjSFIwWVNKUFVJY3dRUFRt?=
 =?utf-8?B?S0pqdFk1UXRLL1k4ZW5CNzVlV3JWdHg0YVlFU1JkdWk4aW9HM2RzMG9FN0ht?=
 =?utf-8?B?LzIrWU1DN1NCS2NEZzFHZUx5WDdPYmhBUzdxeXhaQlBNSFFUN0FEUjNYQllB?=
 =?utf-8?B?aGtNSlQ4blZ5amU3L1JvcnE1d3Y0aElVTTNzYmJacUtlTk9NaVgxNi9MeUhV?=
 =?utf-8?B?ZDkvYTMvUkU3aHBkelRlWXYvbm1XVi96OXZjZWZBYVlyc3k2MytneXAxNWFx?=
 =?utf-8?B?MGFWakVSc1FNZWtpZTNWWFNubEg3NHYyTTNyNWp2cjN5Sm53TXRLalBVcWht?=
 =?utf-8?B?WG8wcVV4b1RJVVdHR1crZlFDWTl1SU94dmdaR1NVWjRGcmVvVzdEZXZyeDd5?=
 =?utf-8?B?SmJhdTlPL1h1UGFrcDVwUzlDSDFLcHM5ZWYxV3BiK1pxUmZEMnhJdDZWNGR3?=
 =?utf-8?B?RnVrSVJRUGVydWtJdlNaZHV4U1JVYmlBcXh0enEweWgwK2pmZ2RzUXp4K3di?=
 =?utf-8?B?U0NPY0dCNTR4aFc4TTRSdlF6SHdiZ1JtTXlhRGJxK3pmcWcwN2gyUEQ3V1JP?=
 =?utf-8?B?NDZNVHdZMkxFQnVDYTBwNndWYlFEeFJsYU16aUhFckFpZ016RW00ZXZmMVJE?=
 =?utf-8?B?ZHBxU1FUcERZWXA4aDRBZ0RSWlpLWE1MdVBrNEJJYTlHNUZZblQzS1M0eFVa?=
 =?utf-8?B?c3I3YnRTQmJiL2dqRXM4Yjd4dkhoemo0ZVdxd21Vb0hOTmk0TGpVbS9rTVJs?=
 =?utf-8?B?UCtTdGZZZDhHNnF5TzRMdFhjK0dGZkRvSkRjeWFsV0doOVJ3MVJpUzJkM3hQ?=
 =?utf-8?B?ZEpmWmtZMWlHME9oeFZBb2poRWNucE5XMmk3cU1Bc0dCTCsydTdYVmlFZ2F3?=
 =?utf-8?B?MlB0UVdrQWhZZjM1QjMxc2J4cjFsUkNyYS83NmlLdEdBTWlHcFVpSXdhZ2or?=
 =?utf-8?B?b1pyL0tEU203QlJkTnJXY3pCSk8xRWZFT3BmZTR2d3N6ZW5valhDa1ZzRjVS?=
 =?utf-8?B?Z1RjVHpOcXM3VjFKZi9RQT09?=
Content-ID: <D6D7323BFED3E34FA0CE9735BD2BE3B7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83a6e32e-b9eb-4a92-19b9-08d904391bf3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2021 20:15:57.7080 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T/v7efSuQit8y4mC1268i51eNB794IW+scuNxwdJlc7pC7vE/K6hLdVUbyI8twC/4u6kG/QtztwXdtb/Lb4x2KupTFQcUs/ANrHQGEa9Y28=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net] igb: Check if num of q_vectors is
 smaller than max before array access.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2021-04-16 at 16:59 +0000, Aleksandr Loktionov wrote:
> Ensure that the adapter->q_vector[MAX_Q_VECTORS] array isn't accessed
> beyond its size. It was fixed by using a local variable num_q_vectors
> as a limit for loop index, and ensure that num_q_vectors is not
> bigger
> than MAX_Q_VECTORS.
> 
> Fixes: 047e0030f1e6 ("igb: add new data structure for handling
> interrupts and NAPI")

The Fixes tag should not be wrapped. It's exempt from the 75 char
limit.

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Reviewed-by: Slawomir Laba <slawomirx.laba@intel.com>
> Reviewed-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Verified-by: Mateusz Palczewski <mateusz.placzewski@intel.com>

WARNING: Non-standard signature: Verified-by:

Please fix and resend.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
