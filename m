Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 102B740656E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Sep 2021 03:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6F0A1849E9;
	Fri, 10 Sep 2021 01:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JEmUT4oXcVDG; Fri, 10 Sep 2021 01:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 508F8849DB;
	Fri, 10 Sep 2021 01:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCE461BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7D5A40467
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fs663XY1mlzu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Sep 2021 01:50:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C0EB940466
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Sep 2021 01:50:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="281980430"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="281980430"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 18:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="694497156"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2021 18:50:40 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 18:50:40 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 18:50:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 18:50:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 18:50:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRWEieop93EtqVRtjklMpMBO/j4kzrPEb/U89KMIJb79M2qh9NRH790nWebFyjNGvIPrxTGSCB6CALz2mGlHAGdbb2uzoS8kWEqUYLxfQW9mTZwOXmuFTYRWSGpmqzhCGVzSMYL/wtsGBHgc5wf9z094Tx/Xgo70V1TxAeBnH+aI2HrLvFsv4Y04LUGppTzkgvJsCc5YzCmnjEU15WcODUlJlnObeBZiOsTnYdeeHPc7gl4yxh1av9iWiUgUCAwBPvh4lbb63Dbdwny2vzEXvtkX+Ps14jbqNPaBD64uv/lnc0JWq0sZuxsx5fZJ9yzEPN9IU3cDs0NmvZJzC+G8yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Or2ySpob9lSqIO9YsISrHwoQ1kATa4L1nWnjy48Ltyc=;
 b=WIeBNRwzTxwf1eAGzTcb8cZEyI9r4APmCymAyaqnDgWsU4Mc5GXbmJ6QatmRkeEmmg3K9ZDBw7c/5lkedP8RrqhHGgTa1hTR9KbBxZ0wtWXuQYwhmjklTbx073+oDYOBDAKO8aNDuGB6PPq+DXe9YH/a4xHwl4/F8pQYvSFJfs61EBUIzyejJdVCTP2oULBG1tBOpQ9GRHmszwO3nl8CZsmEusgbdfB61uAA24Xw5TWc1E/LG1nWqo7DX6KtWpXj46AiCQCyQXyeNPnlIxlh11NIXBK2TpuKZiNyszbcIGs/Jr6oJj9PCzsveRAUxpDo/MsJ/2lmGRSgFLxZTr59/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Or2ySpob9lSqIO9YsISrHwoQ1kATa4L1nWnjy48Ltyc=;
 b=RQtCmD2/Y6NXliMr1GJPHIss9nkX+AQ2B/Zo2YJwvsTcZ0NA690E3HCUUR+7Uxg3XNVDtjBIdUBNo0u6+Z0cIhGNzJDeHFOw9RCshgiGXdLg/Rzf6Tleq7IEbFKuWDtqtBxc9l1Rt1eYCDhytu8VGbnvyqcWQbFoMeqkDH6hVA8=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CO1PR11MB5155.namprd11.prod.outlook.com (2603:10b6:303:95::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 01:50:38 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::adb0:ecb3:3ddb:8d3c%5]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 01:50:38 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH 1/2] e100: fix length calculation in e100_get_regs_len
Thread-Index: AQHXpNpf1vgfuwdblUikz9gTkfZqlqucgsoA
Date: Fri, 10 Sep 2021 01:50:38 +0000
Message-ID: <115098a3-89c5-f041-d15e-6fdd3665fabe@intel.com>
References: <20210908175237.3058574-1-jacob.e.keller@intel.com>
In-Reply-To: <20210908175237.3058574-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be1bc32c-9d96-4a28-2a76-08d973fd637d
x-ms-traffictypediagnostic: CO1PR11MB5155:
x-microsoft-antispam-prvs: <CO1PR11MB5155C4DABFB30DD635288EBAD6D69@CO1PR11MB5155.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:428;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: L067UlJdTmFAEzhwA7Vhc4B5Wc/nQAEUG+ubaCJpoGU3A/3dXomxmPHzZc6E+7YFFwRIzu8QLMM3jifRnIUPJ6/JuisGZW/7tM6xAPPx9LIjuSCVSleNehR688z//q+hyg3Dnc3FtLYRilXLRACLVgKoWMMgmSXmPCOTJj12P8HW9GutQFAlJ3pz81gJe9YkkZGv74aKVWnwaRwh/Ey7F3ga0J0nNPepmCMYZ4jofQ0fXTyn80yWuttT71ge9jV8k9CjR14JrI9uxfkCrS3KGO4XDTBaclUO4MGsPuAMR+LEtOdR+nXk/7HcCA0ZlIqFNVNswcZ03spHiuyXNu5etkYm37k50+o8Jb7Romk2SAbbGtncqH4P9D6HTLwmEmfXpKlU5FG9fCfCn/1MxfB7VgXjGIe8HdQP36WZutZHu1WD+2yeP0Nw67s5t/g/p+Ajjo9ozij2hrcxbIOUHsslWzQc7hND0pvaua7ntvk0wtcwBhiWuS8ttkqq05l59dfPmD/UXenAQasPwiqm+VF2IcOr+eD2SL+QcarHxxKU0bKl1YI4HbJ0Y6OD/LsTFKlMFRuljXzs7ivGvzkajC09jcqxm5DYLh+sZ+ZBS87cJh+pWRp8lJjZ0EGgetwaiuKDYEA3807JR8snpVV5ZofF2rZqY/Mu6X6khqHg9ushkFPy0hP+eqdEGSK320aW2rEgMUWt9s126Gw1GER/RXoceAE0PRL8KTEe+aMX+zFNanNtdcYo3QcKKxuRNXpv+0EgIumULSw8CKxwfOjFbuE3ji5cDTWsN4ua7bSi5FQoyVc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(478600001)(8676002)(186003)(71200400001)(6506007)(6916009)(38070700005)(2906002)(53546011)(66946007)(76116006)(316002)(66446008)(86362001)(66476007)(66556008)(64756008)(31686004)(6486002)(26005)(5660300002)(83380400001)(31696002)(36756003)(122000001)(38100700002)(8936002)(4326008)(2616005)(6512007)(45980500001)(43740500002)(505234006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2s5Rjd4WGFXdVI0TWxuUll5NVdBU2M1L0IxQmpnTUYrb3pMUFQ5ekRJcndC?=
 =?utf-8?B?WU9KMUJqNFNSNm9vTnIwQ3ZtNHRYWWpIWVNGc3pTcVhTc1U3NUFieVk0VTht?=
 =?utf-8?B?dW82bjNUUXpBQWhrcm9DSU1DWjlLQmpTNGlXbWJ6WklpQ0c3VHE5N0lreno2?=
 =?utf-8?B?WURwL2xSUEFQWDZOZmlUOC9lenFCbEVJQjlRcFlxa1pzYSthRE9Vc3JTRjN5?=
 =?utf-8?B?c0ZxNzZrcjYwenBXSVpqRVBLQVdJdTJkV0QzbWZUcU5MdHB2ZUk5alJhanF0?=
 =?utf-8?B?anRPbVU0eEk2WVZld2J2bTNuOCtSampBV1hnV1Vwcit0S3dldUlFQUppWHJk?=
 =?utf-8?B?SGh0S0lhc3FEWHQ4R0lsWnNjWlhOekFqTVdTeVVUclZFd2dxei9KMGVZKzZi?=
 =?utf-8?B?TzhNeEpXU0FzL1pLV1VPaWF3aUdnR3JVTDZDek5Ody9IQ3llMmJWMkVxamFZ?=
 =?utf-8?B?azJKTmxabHk4bWR6Wm85dFhEUHZQUEJGVElxTERCRTBRNndkS0tuUGdUSzVM?=
 =?utf-8?B?NHY3NlBWM0RJemsvOHdHWVhCNkZvYTZiVStYb0hQU1ljazJCNzQzNTF2Unk3?=
 =?utf-8?B?S1VCb21XMXA2K2ZSb0VGYTh2NU9aWVFCNExzZVNxNU5nenBEL0dhaEM1Yk5l?=
 =?utf-8?B?WjVJb1d6OHJOVExYbWk4U3VkUm11bEpSZ1lFRHVoWGQyeWZ2M3hiaFJvbDcz?=
 =?utf-8?B?TVlCWGwvQng0MHY3bDJJK3RuZjRNSTJ0UXE3TzRsNndWL0xwTlpoQ0puMEtv?=
 =?utf-8?B?YUUrY1pub2E1dHJ0TVhlTGNCMjFwUDVjc1ovL1QwWmE4Z2VQSDJIOUFKSlpX?=
 =?utf-8?B?N05NZUFlU1U5LzhEN0NtRlVwNnF2YlU0Y0pyU0lJU1NiejFkRURJako0QUU1?=
 =?utf-8?B?MVo5QkNMQmJSN3VxMytSaE1XWG54Y29JRVhzalk2M2VYdE40eTY4YmZIZG52?=
 =?utf-8?B?aURCL3Z3ZUIxOHlsNUxLQWtxR3A4bWFCazFva3pkbXhaakp1Rm5rakVMTUtD?=
 =?utf-8?B?YnRHMFpOanI3azhoSnVUMkcyYXpoNDZKSlEwMHNiK2Y5RWRISW1SNnFTakVV?=
 =?utf-8?B?TE5lRnR3YUtxcGU1VEw5S3Q3L2JBYTAzeWVEZWpGTERCZWNycmlhN2tBUVBP?=
 =?utf-8?B?YVR1cVoxQ0x1VjlIOTk4cHp4Z0M1UkJMejhIZjF4YksrSkU1dGg5WEdhSnlI?=
 =?utf-8?B?U290SlNSNkxiamRzektTSm0zdWZUL1pGcUxpQ2pqRDRzbFFRY01iRFJ1SEZY?=
 =?utf-8?B?VjNGMEhKUUFFSGdJZHZleklmeUVnM3dXWm03WFl2b2t5cWdiT1g0bkJWSEZq?=
 =?utf-8?B?YzA0MlVHZlJsd3B0UXNJWkRMSHpRV1FnekR5WmNzd1lJejFpMVpiQVlEYnk1?=
 =?utf-8?B?b0loS3JZcGIvMDNjTzJ0S0I3VGt1RnZwUlgwbXhGMnU1cEtrVjBLTUJkYVRU?=
 =?utf-8?B?UmlFVWNlRzBuSkRPNTdRSjN5cGlhVjQxUWYwZDNhdVgwZmtnL0VIWHFPNUJI?=
 =?utf-8?B?dVdvRS9WdXFoWjUrTkFkRFhVY3Jkc2E2TUlKYlV3WHJXK1VnR2JPTnNwY0J4?=
 =?utf-8?B?N2o5UENsVjJwa0dtNTlNTVRGTHFFRk8yMHkxZzNpSDVNRk01bTRDbWRPWXpG?=
 =?utf-8?B?N2ozVXVPdmtTeG5VWEFYRU5zZ1FOS2M2ZjBHdW9yRkR6MUVmUXA0RlhrblpP?=
 =?utf-8?B?VUhEd1pQcnBiSnFFbHFKNXliMVozZ3QxZjFyMlVhQkkwdWVIN0V0dG9QWFR2?=
 =?utf-8?Q?tDznC5zZ/ve1NAxhD0=3D?=
x-ms-exchange-transport-forked: True
Content-ID: <E71B42090DAEC347B0A2016385DAF1D7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be1bc32c-9d96-4a28-2a76-08d973fd637d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2021 01:50:38.1448 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z5X2iAO5xzk31tjo4g8aQyYLRDyWVduf0Gvqki1BEFZL8mRX6SH5VGlP1Wdk7lFFHXF1LFZ4tRCRzO49hH2OKr1+WS96WJ1kwPk2ywrOPm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5155
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/2] e100: fix length calculation in
 e100_get_regs_len
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
Cc: Felicitas Hetzelt <felicitashetzelt@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/8/2021 10:52 AM, Keller, Jacob E wrote:
> commit abf9b902059f ("e100: cleanup unneeded math") tried to simplify
> e100_get_regs_len and remove a double 'divide and then multiply'
> calculation that the e100_reg_regs_len function did.
> 
> This change broke the size calculation entirely as it failed to account
> for the fact that the numbered registers are actually 4 bytes wide and
> not 1 byte. This resulted in a significant under allocation of the
> register buffer used by e100_get_regs.
> 
> Fix this by properly multiplying the register count by u32 first before
> adding the size of the dump buffer.
> 
> Fixes: abf9b902059f ("e100: cleanup unneeded math")
> Reported-by: Felicitas Hetzelt <felicitashetzelt@gmail.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/e100.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e100.c b/drivers/net/ethernet/intel/e100.c
> index 373eb027b925..588a59546d12 100644
> --- a/drivers/net/ethernet/intel/e100.c
> +++ b/drivers/net/ethernet/intel/e100.c
> @@ -2441,7 +2441,11 @@ static void e100_get_drvinfo(struct net_device *netdev,
>  static int e100_get_regs_len(struct net_device *netdev)
>  {
>  	struct nic *nic = netdev_priv(netdev);
> -	return 1 + E100_PHY_REGS + sizeof(nic->mem->dump_buf);
> +
> +	/* We know the number of registers, and the size of the dump buffer.
> +	 * Calculate the total size in bytes.
> +	 */
> +	return (1 + E100_PHY_REGS) * sizeof(u32) + sizeof(nic->mem->dump_buf);
>  }
>  
>  static void e100_get_regs(struct net_device *netdev,
> 

For what it's worth, without this applied, CONFIG_KASAN shows something
along these lines:

> [   65.615306] ==================================================================
> [   65.615564] BUG: KASAN: vmalloc-out-of-bounds in dev_ethtool+0x1c30/0x3280
> [   65.615806] Write of size 596 at addr ffffc900001f1078 by task ethtool/1044
> 
> [   65.616070] CPU: 9 PID: 1044 Comm: ethtool Not tainted 5.14.0 #1
> [   65.616246] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.14.0-4.fc34 04/01/2014
> [   65.616486] Call Trace:
> [   65.616581]  dump_stack_lvl+0x46/0x5a
> [   65.616752]  print_address_description.constprop.0+0x1f/0x140
> [   65.616959]  ? dev_ethtool+0x1c30/0x3280
> [   65.617079]  kasan_report.cold+0x7f/0x11b
> [   65.617228]  ? dev_ethtool+0x1c30/0x3280
> [   65.617349]  kasan_check_range+0xf5/0x1d0
> [   65.617478]  memcpy+0x39/0x60
> [   65.617580]  dev_ethtool+0x1c30/0x3280
> [   65.617716]  ? ethtool_get_module_info_call+0xf0/0xf0
> [   65.617868]  ? post_alloc_hook+0xd9/0x120
> [   65.617995]  ? stack_trace_save+0x81/0xa0
> [   65.618127]  ? inet_ioctl+0x132/0x2c0
> [   65.618259]  ? inet_compat_ioctl+0x80/0x80
> [   65.618385]  ? avc_ss_reset+0xb0/0xb0
> [   65.618514]  ? cgroup_rstat_updated+0x61/0x180
> [   65.618669]  ? __alloc_pages_slowpath.constprop.0+0x1210/0x1210
> [   65.618852]  ? mutex_lock+0x7e/0xb0
> [   65.618981]  ? __mutex_lock_slowpath+0x10/0x10
> [   65.619124]  dev_ioctl+0x1b0/0x5c0
> [   65.619242]  sock_do_ioctl+0x146/0x1f0
> [   65.619369]  ? sock_alloc_file+0xd0/0xd0
> [   65.619486]  ? __handle_mm_fault+0x1201/0x1c00
> [   65.619629]  ? vm_iomap_memory+0xe0/0xe0
> [   65.619763]  ? userfaultfd_unmap_complete+0x7d/0x1c0
> [   65.619927]  sock_ioctl+0x332/0x430
> [   65.620044]  ? vlan_ioctl_set+0x30/0x30
> [   65.620162]  ? rwsem_mark_wake+0x460/0x460
> [   65.620291]  ? handle_mm_fault+0x17f/0x370
> [   65.620427]  __x64_sys_ioctl+0xb9/0xf0
> [   65.620541]  do_syscall_64+0x3b/0x90
> [   65.620672]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [   65.620823] RIP: 0033:0x7f1504b1a0ab
> [   65.620933] Code: ff ff ff 85 c0 79 9b 49 c7 c4 ff ff ff ff 5b 5d 4c 89 e0 41 5c c3 66 0f 1f 84 00 00 00 00 00 f3 0f 1e fa b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 9d bd 0c 00 f7 d8 64 89 01 48
> [   65.621422] RSP: 002b:00007fff451d5428 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> [   65.621650] RAX: ffffffffffffffda RBX: 00007fff451d56d0 RCX: 00007f1504b1a0ab
> [   65.621843] RDX: 00007fff451d56e0 RSI: 0000000000008946 RDI: 0000000000000003
> [   65.626946] RBP: 0000000000000271 R08: 0000562b6f8442a0 R09: 00007f1504be6a60
> [   65.631874] R10: fffffffffffff000 R11: 0000000000000246 R12: 00007fff451d5580
> [   65.635136] R13: 0000562b6d9538a0 R14: 00007fff451d56e0 R15: 0000000000000000
> 
> 
> [   65.643571] Memory state around the buggy address:
> [   65.645605]  ffffc900001f1100: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [   65.647666]  ffffc900001f1180: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> [   65.649692] >ffffc900001f1200: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 f8
> [   65.651548]                                                              ^
> [   65.652882]  ffffc900001f1280: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
> [   65.654243]  ffffc900001f1300: f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8 f8
> [   65.655586] ==================================================================
With just this applied, the problem isn't fully resolved. However, I
really do think these are "separate" fixes. If desired, I'm happy to
merge them together.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
