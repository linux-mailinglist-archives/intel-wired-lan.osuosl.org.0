Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32741342817
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 22:50:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4F9E6F4E8;
	Fri, 19 Mar 2021 21:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ho0MwLRBRofG; Fri, 19 Mar 2021 21:49:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B04906F4E5;
	Fri, 19 Mar 2021 21:49:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEE321BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 21:49:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C294083F00
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 21:49:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0BWGAfFcrXKl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 21:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1280483EFA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 21:49:50 +0000 (UTC)
IronPort-SDR: 8u2TrWurYeoXnsHdEIl5Sk7n9HtEFLNFABzu9eDm3fX/VQhnQ7QzLqK4R/deCR2mS/loonV0Mb
 GeqP3XGsbmFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="190008625"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="190008625"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:49:46 -0700
IronPort-SDR: j27z4dBWc/ltVXEfgRBOMLFSVUDeQ91PKswu0wmnsEIiBx4wRdDnhycQw3iXBcKe5+j3HYV0VM
 7ibDJqUVYbuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; d="scan'208";a="389779970"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 19 Mar 2021 14:49:45 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 14:49:44 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 19 Mar 2021 14:49:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 19 Mar 2021 14:49:44 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 19 Mar 2021 14:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkjV/sOkamfZbz105W/UD1VDgDUOftOZETI40cBDp5U7Zh1rgazKiEZWOvR6FGMbxuX2Hvw51uCqF+9eL8xAd0T6efyng6keE6UVaykNn162LkV28WX30UHMO5idSQ+u390yYt3n03ogBxsY0XxDE58N+l+t1H4jcmfOEeUnxIzMIaROhdOFRgZFluKq9OQyHXz/2tCEJxMRe+n3PyW4pddMBiZN6aS4xU1SkNjMOBsc4uPTzPDEgVYKxtOKQIqUZtBC1TgUdPpXnl6wiMWui0d1AJJjmJ+FdBb8HtYounSswU+el3XdKEeAMnYT3iDgvxr6xlNXglhf//ihsaoLsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yj/cFw0JEigjntgSEWe4pY+sobaksN7C3BQZas/wq2Q=;
 b=mGOMaYOk7tQQL5iMtxTUdaEjIHExyycajrUSfLk7KEdYSmUukR66/HxRQN3u0FVWV2dFKYsg7wxRR5pg69A96Ls3dvRPlfm3T9/oGwTY1ULkehsf4gwCUHDcMqu5Hs0dKOcf0g4E0Ts6ldZ0chYwK8yuaIXeDk5AgJ8Kwq8rdnIxJjg1dkVbfbrzUUUTbkN3V6EZj9na69YyXVbmIbwHsh8/svmGsg/sIWNoYoDU3w0A/SgWm8Ca/bK2jSkiu5U5GvCfKT6xgIeO7Hr75NmXBzzLqVBdPf7gEvCpM88sOj1TYfdYd4VPzLKtHZGHQChfvj5/4Q8CoWq6620djvaCVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Yj/cFw0JEigjntgSEWe4pY+sobaksN7C3BQZas/wq2Q=;
 b=VjSsBZy6rhuyoLVbyM4UYp7aMExdXtWA8/Ygov0UKnk3X33k1z/umlKbd7DMDz1IOHufgoH9STwC/NlzY2J8wCrKyeQiQ3y8URzdN0kwYOPXQ7CF0OT8vMwlZ1MI5WjJhwYSjQarkWGL/Hrq4hOR1L+BoZo7KQq8z4NqSpnwiFo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4624.namprd11.prod.outlook.com (2603:10b6:806:98::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Fri, 19 Mar
 2021 21:49:43 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%6]) with mapi id 15.20.3955.018; Fri, 19 Mar 2021
 21:49:43 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] i40e: Fix parameters in
 aq_get_phy_register()
Thread-Index: AQHXHM8/WoH29gNySEG7Jb1lUIBjLqqL2emA
Date: Fri, 19 Mar 2021 21:49:43 +0000
Message-ID: <a5e0b544180dede5aeae7d40b1a242281373a7a1.camel@intel.com>
References: <1616158405-95495-1-git-send-email-grzegorz.siwik@intel.com>
In-Reply-To: <1616158405-95495-1-git-send-email-grzegorz.siwik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ed549596-03b7-4201-4012-08d8eb20e7d2
x-ms-traffictypediagnostic: SA0PR11MB4624:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB46247AB032AD984DB86F45E1C6689@SA0PR11MB4624.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:494;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yYeYQ9MJMGbNyi0I254HL9+EuL0SFzJE6L0NwnA8kqt6Ge1tG/pQSkVgMD7MC4FPAmYsg12k4uW7oeZNo0gW+qiXLFjvpmTYL/J91Qujn7XmmPJQlOku5ZGpxS8+rlhVjL+xCf2IRl1eetBvqrQz5FQFVxKa3Dgmbe736kkqQ0+nSqpF7rT2f5Vb84B+NrUgd3kcU9y8fUd39nroo01y5+V7PyTVkO1obzaEjxInDowuS1dmAbqdWpFTX+8D5MfjZoD4+vLvndGICqYsOthvabhidqhXWuTWrJwO4RzbCcN1jEqFZ4czCog+lES8wUb7UT34FZT5eP/0nHOL1prmnkeT/H21iQ05GoY7Kq89sIHrELe3utNbG+JlrHmd1HztC8VEKZN9j9jt6mfhcqDFYgCIgvcwKP8qfU9dCJUidqzS5P8BfzvsDQTzd9QtgqLC4TUz4lat8HSnS8AsrwDmw5qy8Aejz+HBKx99X3LgEBBmf0MP3eCTkbSq6nWsPhH43DCUieOEqB323hAnf551UXZV5HmKOv2rbuCyqiB5CduOpqYzkFTSeWSnfSKAHLJnuF/wfu08Y7du10iYdHiUiEseXCD/zCSYNcnZmksPG05TJ5CfYWR8BS8WzeWPZfwmXgKJTiNBrdQPr5iPYWpi4SQco+PwyIw9TiE07wkT2Ug=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(136003)(366004)(39860400002)(376002)(38100700001)(66556008)(66446008)(66476007)(64756008)(66946007)(478600001)(316002)(110136005)(36756003)(83380400001)(71200400001)(186003)(2906002)(6506007)(5660300002)(8676002)(6486002)(8936002)(91956017)(76116006)(86362001)(6512007)(2616005)(26005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?RVJteCtMVy9nRjJBcTdET3hUYUh2VVN2Z01MM24zQXRlNkN5MXBNQnNuMldm?=
 =?utf-8?B?UTZWRkNzOTBweUtIOUp1M3kvQmdZTklqTlcwa2tNaitQaG5WcTBlbnhOMjUr?=
 =?utf-8?B?UmF0V2pzcDIvZTYvVHdqbFljUGxxWFdKOFdNamhzVVpJZXVOb0ZmTkM2Tjdr?=
 =?utf-8?B?OWpvYUhlalVuYS9hWCtsdjJGd2FSWDROMkJ3TzIxMEcvQ1BvTndGUUFMc0V3?=
 =?utf-8?B?enBuYyswVmJpSWttY2lIQTBCRnBJTHBlU2RmSWo2RzB5bXh0ajcvS29wYXRN?=
 =?utf-8?B?TmVIUXhKSkZQckhUZE1RSS9ITkhZbGRYMjNDWXZSbUt4a1VmOVQ2Z2NzQW1G?=
 =?utf-8?B?YVhxME1XNGVpVThON1pYL3FiNjBjQk9Gb0FsOXMrZGkwMDRuY3pDMXB5S2Ur?=
 =?utf-8?B?UmV1c1NDTUNmbk51N01yMFFQM1M1aHhxcWpyUTllTTVIOVhUYXYycEZ0cUMz?=
 =?utf-8?B?Znh5TzVkazFoTWJEcnpMV2JMVTkvc1RXMXhJY0JqZllMWHpDZnVHZG5rL2Q5?=
 =?utf-8?B?R044Ukg1ZkxzUDRpY210WE9DTHNvZE5HTEUvZFAwMXMvbjUvNnUrYVJ6VjVO?=
 =?utf-8?B?aDNNMDVabGtJVXBIRi9TbzJJWFNTYmpDcEhKUmtGZS9hMWNTWmNIMzA2N0NV?=
 =?utf-8?B?Z3JZVFVneFAxdnVGcjYwdmZ6NHdmNDFzQVNwR1MxaU9Zbjk2SU5BWHFPY3lX?=
 =?utf-8?B?QzJSWFhkREgwM2lObDZTUjg2NEs0d2dETjBTZkdwREJnWVlRT28xdEEvRTgz?=
 =?utf-8?B?azJoc3lOd0lYaGpRUGFSeFVENmZSWmZzVmlkaEtlelcrdWlGQzlpK1p0aUly?=
 =?utf-8?B?c1RaQWdFdi8xdUdlMzJVc3M3N3F1ZnJOTTdXWDUvU3I5U2FRYXFUbFQyZTNn?=
 =?utf-8?B?SHFXM0hhand0SXpzWmMrSloxVjVKMnRtVXFhZ3AxMUcyQWkyUzRsZGRueC9U?=
 =?utf-8?B?Ry9EM1M2cGxJenZQYnVMOUg2MUh4N2xIV3dYTTNpQzc2SXFmYm9PMlIzMXhZ?=
 =?utf-8?B?R0NKN3BRNlg4OSs5NklxZnptNm52MnRGM0RSWmdFNXhVRkhlRkxLdDduQmFW?=
 =?utf-8?B?TjZxMm13RXliY3JjNUZkZFI2Uk9VKzNSazFMMFhYWXlrTzlmSXIzblR5MWs2?=
 =?utf-8?B?M0daRVFCZzR2WnFTSnlRcnJqdEdGRTBaWnlZNGE1WGFlMnlpYW42QXdKODQ4?=
 =?utf-8?B?L2dUQ2NIM0FCeXEwNExIMnFDSnI2K3JYRkJHNnczblZSZWFZNHJ4dXZYY0E1?=
 =?utf-8?B?OGFzb05HOEtBNXlBTDBQNkwwWjBtS1BScHFaNnRiT2dvdXhwUys0TEQvRmF6?=
 =?utf-8?B?bUV4Ty9BT3pReXptRkdkM3FEYlJwY2cwcE91dkVZaXYrYmNyOHFsWGljTjRp?=
 =?utf-8?B?V2VES0p6RUlFd1BYTk9Od2tXcHVNZTRoRldJMTBROFZacncxa1phUHpaU1dr?=
 =?utf-8?B?aWlnODNNY0s5a1diTkFqYmFUaU1YZmJTdVBXWW5YYlgxc3dtbXpoTy9JcE5y?=
 =?utf-8?B?Sms0dW54alFBUi92QTE1ODR3REN1VEtoM1luVUNza3k2MDNKaGFqckFaRFE5?=
 =?utf-8?B?c3Fib3hnRE5qK0NyRGtORWJ4VW4zakE3VERqcXJpUGlwbURRNUQ3WllVRlFj?=
 =?utf-8?B?MWZHV3Y3TW9LL1Nydk9vS1cvUUFoSHRUWVh2Ly9zeUhDQnBGbEpXQ1ErRG1E?=
 =?utf-8?B?cFdKRmdwS3ZPZE1xU3pwWkNqUjBkMktKZzRYSWZxcFJJK3Q4N2UzR2ZZS0c1?=
 =?utf-8?Q?F/xumX20dBV4d8A4IhCebntAfEKvWHpA1PH1+EF?=
Content-ID: <3302F58FE7E16342AC5E109944BB2E8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed549596-03b7-4201-4012-08d8eb20e7d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2021 21:49:43.2888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0yYp20xEAPyK73uufPi10jAG5ncil6fPcgFe64TZWYUKKgryZtxHCSHqNyp+5VPSmBdZrUMK+xUfEGqk0nQoh7cOch7dIVwYmnZJMpEb13s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] i40e: Fix parameters in
 aq_get_phy_register()
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

On Fri, 2021-03-19 at 13:53 +0100, Grzegorz Siwik wrote:
> Change parameters order in aq_get_phy_register() due to wrong
> statistics in PHY reported by ethtool. Previosly all PHY statistics 

s/Previosly/Previously

> were
> exactly the same for all interfaces
> Now statistics are reported correctly - different for different
> interfaces
> 
> Fixes: 0514db37dd78 ("i40e: Extend PHY access with page change flag")

Since this has a fixes, I beleive it's for net, but you marked this as
net-next. Which tree are you targeting?

> Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
> ---
> v2:
> -Fixed typos in commit message

This is marked as v2, but I don't recall seeing a v1 on this mailing
list.

> ---
>  drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> index 96d5202..0e92668 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
> @@ -5480,7 +5480,7 @@ static int i40e_get_module_eeprom(struct
> net_device *netdev,
>  
>  		status = i40e_aq_get_phy_register(hw,
>  				I40E_AQ_PHY_REG_ACCESS_EXTERNAL_MODULE,
> -				true, addr, offset, &value, NULL);
> +				addr, true, offset, &value, NULL);
>  		if (status)
>  			return -EIO;
>  		data[i] = value;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
