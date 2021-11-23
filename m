Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5253445A677
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 16:22:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC0D180F7C;
	Tue, 23 Nov 2021 15:22:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VA2ST908k0Uq; Tue, 23 Nov 2021 15:22:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80EC980F02;
	Tue, 23 Nov 2021 15:22:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59A161BF310
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 15:22:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 48759402F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 15:22:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dXH2Mx12LDTt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 15:22:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34CD7402EE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 15:22:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="235276162"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; 
 d="scan'208,217";a="235276162"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 07:22:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; 
 d="scan'208,217";a="509446857"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 23 Nov 2021 07:22:15 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 23 Nov 2021 07:22:14 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 23 Nov 2021 07:22:14 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 23 Nov 2021 07:22:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDRmBQtis5mRZMHgKtn86ERInttc1XEUe1wRmX1uccXAl0c/SmDivrM9aAiw50MkjWJ+0PIMhTHQKynwylu6VAfBzeaAXkW0zitEgmX+86YPZUEBUqwKMJIpbM1qW//fN4K5MKFoMB4hO/6uEdz+zyE1ZCmBB9lG8U2dYhPj0/aqj/gejMpTF+Rdf0KZL57MVVWpxw2fRMv6FqmKBVjiJllQoNazSCsRQJQlAdl5C4884k+pdkBXVVyVzjsJN8z2FuN8mGcnfvkHGW73CHNnnx2lHW+fahnwDZHC5vZEqMdCI7Ou6tEQF1b+egho3niaznLLJvsE9PipY+SNq6k3hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MG8lhKG12ihVsBGYMhDRV6MccRMBipMbYwbuxy/HlDs=;
 b=hNN8oAYkGVh7BxJ4rtBFfHskAhy6P1/1yzszQ0b5Nhp0TDeTOOMcNYMGSFP2lkYbS7reZIu/Rkxuck8cyMTRCrI+JB5RhD0bhGJFupcyN6hmiMD0zdLiQcFwUOxiHf8wpETaY/eHWjqC9UCOEuC0IBMp4+3PlLMS/BC3HcPEcBhXOnDv6Thmm5chAerpmXFkB/udZ8OAUbmfErQcpWxIapCTzYzncNpbEwp7HtWTjQ9W78JBDU7M+vhuJLMQ5YqaeN+LV2wWmro5OXdyLak6sMpCWvfDh9/boyODV5bxWbKCxJtPLIzj22SBQA2pI4Np9PrwNM8L6IsKy052wVwOAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MG8lhKG12ihVsBGYMhDRV6MccRMBipMbYwbuxy/HlDs=;
 b=QgOWKOH/vGANfSJxDoyQnC0ovQoPrKrV3B6UnOqjkzWSxfPgV0ZbF9vPX2WnRWZXDyK5t2J3aB73/hSRTYaIQJmFCXFZM2Zh9il1Vwri0coM9KZDC72bh4La9jke6IEGHsZyDQBL4t27vBcmJ2RbfJc5NdFfXYzsjC7XrasSi1U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA2PR11MB5017.namprd11.prod.outlook.com (2603:10b6:806:11e::12)
 by SN6PR11MB3517.namprd11.prod.outlook.com (2603:10b6:805:dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Tue, 23 Nov
 2021 15:22:12 +0000
Received: from SA2PR11MB5017.namprd11.prod.outlook.com
 ([fe80::ac43:bbdc:53f8:d5d8]) by SA2PR11MB5017.namprd11.prod.outlook.com
 ([fe80::ac43:bbdc:53f8:d5d8%5]) with mapi id 15.20.4690.027; Tue, 23 Nov 2021
 15:22:12 +0000
Message-ID: <14e6c86d-0764-ceaf-4244-fcbf2c2dc23e@intel.com>
Date: Tue, 23 Nov 2021 17:22:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Kai-Heng Feng <kai.heng.feng@canonical.com>, <jesse.brandeburg@intel.com>, 
 <anthony.l.nguyen@intel.com>
References: <20211122161927.874291-1-kai.heng.feng@canonical.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20211122161927.874291-1-kai.heng.feng@canonical.com>
X-ClientProxiedBy: AS9PR06CA0357.eurprd06.prod.outlook.com
 (2603:10a6:20b:466::25) To SA2PR11MB5017.namprd11.prod.outlook.com
 (2603:10b6:806:11e::12)
MIME-Version: 1.0
Received: from [10.100.102.5] (93.173.37.108) by
 AS9PR06CA0357.eurprd06.prod.outlook.com (2603:10a6:20b:466::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22 via Frontend
 Transport; Tue, 23 Nov 2021 15:22:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f6ba7ac-e345-432e-bf30-08d9ae9505fe
X-MS-TrafficTypeDiagnostic: SN6PR11MB3517:
X-Microsoft-Antispam-PRVS: <SN6PR11MB3517A69904458B1D076CA910E8609@SN6PR11MB3517.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yhfUMGRph8KEDVnewjNqH80sa0BDNrfAlSBcv2xSzR8ftdlpayqjMySruGnyawNoizq2i7h40NyV4HAx39zpHA3A1d3SPQ4bYn468isBpehKjnm8697uImmvfdgZMVVmXHDPX1yR17SH8ZnkZSLAqxW0AiXdeC5dR0tR0O83ZV8NKJVZJzlec4o8pnlq0qQ9G3Lqu01MpMCEZ49jR17UDMsqv4gHMmz3uMwkfd8y063bTt3q0rLJNHzgNhZHunLHet2Lf2fGmje2CI0y4uwswluXFWzOwnq6H9n6ZM7Slca323TNq9HCdufiqm3unsQwUUbqOIDgoEsIWmqBsg5O/oHO/52i9y9o0NB2qR6sK6h+gXbr8Z+0Y6Opl+OxVqxDTLkw3xXiz13rRFj9MO41T7EEE3J7x+P0yUHWcgFirk15QGSCrgdKnJ8cdCGbcXvI2+3SdjzrrGBfjoVe4CA0UXIBR0MQfaZ0UZdbS5xjToMu+L4ZYqn2AXKq3rmfEAtijHbpYzt+X67FIwESq6kr5ICLYG5xamMZwAkcYP5q3DcBTFFd/+UzM744B1/Qqp6i1ecpV87phUeoDCBl2fvPNs1NHoYX7tvFEEVb+Wt2oT1qB/qKIcWiGWnngju3GuPVXoyhY7Px8NpDj54f5wojLV7+0aT4VjJthuhJWLR6wPquApGBBhXGgH1awuIVp0HUZJJ6cKv6W4yeWGh8fNT4Muws5lcuXvOTubavWUlftoGap37PjFanLekMnFj0oCen4RqeLEuVsg70+U1kz2fQsaGoxeT3P/p2RJqK+lTcF1epf1GsnulcDGAlx+OdN05axMnzOsZjv9xozecAGoXbrg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB5017.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8676002)(186003)(4326008)(33964004)(166002)(508600001)(66946007)(66476007)(26005)(31696002)(8936002)(82960400001)(6636002)(31686004)(5660300002)(6666004)(66556008)(966005)(2906002)(316002)(83380400001)(53546011)(6486002)(36756003)(956004)(86362001)(16576012)(38100700002)(54906003)(2616005)(32563001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmVCa2FEbU5WS2pEWFZnNTkwVUd1dEJ4cU1QVmRPSXQ4WEJ2Q2ZnQmVZWjg2?=
 =?utf-8?B?QXI1OFlJZU44SFVBVEdlcDVlTytscDNyZjQ5WjNZN0ZGeGprK1FuUTA2ZWpU?=
 =?utf-8?B?VStxQ0FyWHgra2thSDhORUJVbDR0UmliOXRTbFh6ck5tcG9FVzU4WStxZjVH?=
 =?utf-8?B?YXMrR2E1TURGdm1xYmkrd1JGSzlUN3ZKMHM0aDRGMkpJaHg2WkdLM0RCR2M4?=
 =?utf-8?B?cmYzTEU4QVg0emM1dmkrWk9zUUxVOFJiWVY0K2tyZzVhVU5aUjd1RGNDV1ZM?=
 =?utf-8?B?MnpLeWZkdTN0UnZVd3pYSHhiRDdxd0pYSEhzMWpCNk42QWVUS3R1ZEFUS0E3?=
 =?utf-8?B?TXJlbVhJSkJ3Y29CSlFha2xMQThkOFluVFhDSVlMaEJHYzZtQnNaZFJaejRl?=
 =?utf-8?B?RnplUlY5ZlNsOURxcDM4Sm1YbXlhc2FwMUlwbkpkNWdYWHJOYnA3Y1ZSbmw3?=
 =?utf-8?B?OXdqZjNHTERqT240NmhIUklhQ21NVC9UcmxzRzhra0MrWmRiWGsyZ0JFM3p6?=
 =?utf-8?B?Y0tqTXJOWUZPUVZwcjFpS2FIVGNBWGwxcERyNHc1MnlzQXVXaHJjN0pWTzU2?=
 =?utf-8?B?N1hiSzZjc2pRTlZsUEZaRWx0STArOWRhQWZsMDM3Slg4ejY3S3p4M2hOZ1NN?=
 =?utf-8?B?UWFMdURkS0J1bGRkeFh5SnhKWWhoeWxFVVFrK1FPZjh1WE14a1FJTG5wS1d4?=
 =?utf-8?B?djF1bm1lbEFVU2FPR2JxQkprTW01SmJXbXE2V0NkdkJWNDFjRjlHOXB2dnA4?=
 =?utf-8?B?T2FvenZ3aEhYV0o5RmxhcGFpL284MFR4MDNFemw0V1JuV3hXa1plYVdRY3JW?=
 =?utf-8?B?cGpkc2FCck5xQjRIaXJVNlNCOGpCZmhGZVkvSk0yL3dlV25qK3JYUm9tZ2p1?=
 =?utf-8?B?TVFSUUk5bFZ0QlpVOWc0VzdSZmYydktxMlJLNEh5Nm5mQkE2UDc5UWNzUVBw?=
 =?utf-8?B?WG5vd1h0TnE2RHNFZ1VZdlhqT09aTVZuRmpRdS9xRXN1VzlpU3RoN09jUUsx?=
 =?utf-8?B?UC9XZUhycmlmRjJBa3cwRUJBOE1aL05VZ1VlbTNza3g2aENsdDhoVC9qQTJw?=
 =?utf-8?B?d3p1ZkpGVkxZd1BscXVDcnJPc0RUMGwzRDV4ZmlWaXZVWEFuWVd4cHBrUVZQ?=
 =?utf-8?B?SUVjcGtrc0o3VEJBMlBrUWRTZlp3ZU92QjhYcHJpZENtSSt0SzVMendxK3RX?=
 =?utf-8?B?ZjRZMVBTNGRqMmJtOTVGSGFQaWZObGFCamd2eEZmd3dCbkpBaFFkVE5jRitQ?=
 =?utf-8?B?Sm9ldWMxN0prQmRrMm9JZEN5eGF6NjhYL2hYM0p2Qzc4ZzZ6emNSNGtkMEFy?=
 =?utf-8?B?elIxSHpFZlQwT2FCa0JzNDBncXNCMTQ0LzAxZ0llV2YzOFpBY0FIUFdoWVJ3?=
 =?utf-8?B?dTZ2R2paM2dRRC82UDNQdXRHUDB2SjJZYkVqZjUzWFRpSVpzeTNabFc4RWp6?=
 =?utf-8?B?OHllMUo2aHUrSlBMTU5naTlqYTNpRUFvcWs5S0VvTU9aNXE5TW5jVHA0M01r?=
 =?utf-8?B?TGxISHVweEZOU2g0RElSWDNXaHFLK1F3VnRSMHBjOVlvTlQwZm53cHRaRlBC?=
 =?utf-8?B?YTlLcHdiKzc0WmVYMmgwNDdLbFZid3VLcmF4Z0pEZmZOa1pUTlRMVURYa2s5?=
 =?utf-8?B?TjNZb1FsZUlGSlJOS0hvWVlHYTQyUm1KeEZ0UGFkbFRSU1RubXg2SUppMzdC?=
 =?utf-8?B?dno4cWFWS0s4cGo1TzN1OEQzbFp3eHlKOThQT0VmMTBHdCszOW52cWJEMlhC?=
 =?utf-8?B?ekxXM2N2RGEzYVdKOTRueURoTjI3cDlxYXpvdGJzSTFWcmJBdWw4YnMrSmdZ?=
 =?utf-8?B?ZmlTTDNDQzZTVkZUeFdRUy9ZZ2JkcEIyNFVISjNyODhzb3ZKUnFjZHVzMy9H?=
 =?utf-8?B?blp1T2hMWDZUdC95K29PYlZ5WkdSYXBSUC93ZEZXczZiZ2FuNXhPTHYvVDRu?=
 =?utf-8?B?QzBTV3Zpdjg5bVpIOCs2ZU5manpXTzdxZUJqVjN0RjBTeEhPNFVXNnJCenFl?=
 =?utf-8?B?RzJTK0Z0aVRRaE5ncEJncENVNlMxaXMzbGtPM2J4dFduenlTVklDdVlPeE51?=
 =?utf-8?B?SHFuOUNBNzJrdDNiVFNPb3JENHFPZ2FyR2tXN090b3FqRXROTWN0aUxveVBk?=
 =?utf-8?B?a1NVUmFQMzc0TU5vUGxxWVZ3bE9CemdlUVZ5aE5Rd3hzWjFBZDFaS3pTeWpj?=
 =?utf-8?B?NVBxaXFMMythVnNlUFZTLzNFdCs1d0NpWDJERWQxcnp4ekZ3MGdvcTZVRjZ5?=
 =?utf-8?B?b0UzWHEzT1RrTEx2U1F5cXNDS0x3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f6ba7ac-e345-432e-bf30-08d9ae9505fe
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB5017.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2021 15:22:12.6295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q/6mlCrVZ3bsOWRnoppVeyvN0KQISLpPgVLTtya1JparxT6tMqt0JOpJvBdchm99j7+H2dQwZjXY2A4AMIYkwjHV5afM/JF0XCwCZERAHTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/3] Revert "e1000e: Additional PHY
 power saving in S0ix"
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 acelan.kao@canonical.com, "David S. Miller" <davem@davemloft.net>
Content-Type: multipart/mixed; boundary="===============7586573266356969784=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============7586573266356969784==
Content-Type: multipart/alternative;
 boundary="------------emeEdc0oxJbETmFEimtXU0F3"
Content-Language: en-US

--------------emeEdc0oxJbETmFEimtXU0F3
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Kai,


We believe that simply reverting these patches is not a good idea. It 
will cause the driver to behave on a corporate system as if the CSME 
firmwareis not there. This can lead to an unpredictable behavior in the 
long run.


The issue exposed by these patches is currently under active debug. We 
would like to find the root cause and fix it in a way that will still 
enable S0ix power savings on both corporate and consumer systems.


On 11/22/2021 18:19, Kai-Heng Feng wrote:
> This reverts commit 3ad3e28cb203309fb29022dea41cd65df0583632.
>
> The s0ix series makes e1000e on TGL and ADL fails to work after s2idle
> resume.
>
> There doesn't seem to be any solution soon, so revert the whole series.
>
> Bugzilla:https://bugzilla.kernel.org/show_bug.cgi?id=214821
> Signed-off-by: Kai-Heng Feng<kai.heng.feng@canonical.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 44e2dc8328a22..e16b7c0d98089 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -6380,16 +6380,10 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
>   		ew32(CTRL_EXT, mac_data);
>   
>   		/* DFT control: PHY bit: page769_20[0] = 1
> -		 * page769_20[7] - PHY PLL stop
> -		 * page769_20[8] - PHY go to the electrical idle
> -		 * page769_20[9] - PHY serdes disable
>   		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
>   		 */
>   		e1e_rphy(hw, I82579_DFT_CTRL, &phy_data);
>   		phy_data |= BIT(0);
> -		phy_data |= BIT(7);
> -		phy_data |= BIT(8);
> -		phy_data |= BIT(9);
>   		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
>   
>   		mac_data = er32(EXTCNF_CTRL);
--------------emeEdc0oxJbETmFEimtXU0F3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p style="box-sizing: border-box; margin: 0px; color: rgb(36, 36,
      36); font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;"><span style="-webkit-font-smoothing: antialiased;
        box-sizing: border-box; font-size: 11pt; font-style: inherit;
        font-weight: inherit;" lang="EN-US"><span style="-webkit-font-smoothing: antialiased; box-sizing:
          border-box; font-style: inherit; font-weight: inherit;">Hello
          Kai,</span></span></p>
    <p style="box-sizing: border-box; margin: 0px; color: rgb(36, 36,
      36); font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;"><span style="-webkit-font-smoothing: antialiased;
        box-sizing: border-box; font-size: 11pt; font-style: inherit;
        font-weight: inherit;" lang="EN-US"><span style="-webkit-font-smoothing: antialiased; box-sizing:
          border-box; font-style: inherit; font-weight: inherit;"><br>
        </span></span></p>
    <p style="box-sizing: border-box; margin: 0px; color: rgb(36, 36,
      36); font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;"><span style="-webkit-font-smoothing: antialiased;
        box-sizing: border-box; font-size: 11pt; font-style: inherit;
        font-weight: inherit;" lang="EN-US"><span style="-webkit-font-smoothing: antialiased; box-sizing:
          border-box; font-style: inherit; font-weight: inherit;">We
          believe that simply reverting these patches is not a good
          idea. It will cause the driver to behave on a corporate system
          as if the CSME firmware<span> </span></span></span><span style="-webkit-font-smoothing: antialiased; box-sizing:
        border-box; font-size: 11pt; font-style: inherit; font-weight:
        inherit;" lang="EN-US"><span style="-webkit-font-smoothing:
          antialiased; box-sizing: border-box; font-style: inherit;
          font-weight: inherit;">is not there. This can lead to an
          unpredictable behavior in the long run.</span></span><br style="-webkit-font-smoothing: antialiased; box-sizing:
        border-box;">
    </p>
    <p style="box-sizing: border-box; margin: 0px; color: rgb(36, 36,
      36); font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;"><span style="-webkit-font-smoothing: antialiased;
        box-sizing: border-box; font-size: 11pt; font-style: inherit;
        font-weight: inherit;" lang="EN-US"><span style="-webkit-font-smoothing: antialiased; box-sizing:
          border-box; font-style: inherit; font-weight: inherit;"></span></span><br style="-webkit-font-smoothing: antialiased; box-sizing:
        border-box;">
    </p>
    <p style="box-sizing: border-box; margin: 0px; color: rgb(36, 36,
      36); font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: 400;
      letter-spacing: normal; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(255, 255,
      255); text-decoration-style: initial; text-decoration-color:
      initial;"><span style="-webkit-font-smoothing: antialiased;
        box-sizing: border-box; font-size: 11pt; font-style: inherit;
        font-weight: inherit;" lang="EN-US"><span style="-webkit-font-smoothing: antialiased; box-sizing:
          border-box; font-style: inherit; font-weight: inherit;">The
          issue exposed by these patches is currently under active
          debug. We would like to find the root cause and fix it in a
          way that will still enable S0ix power savings on both
          corporate and consumer systems.</span></span></p>
    <p style="-webkit-font-smoothing: antialiased; box-sizing:
      border-box; margin: 0px; color: rgb(36, 36, 36); font-family:
      &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;,
      &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;
      font-style: normal; font-variant-ligatures: normal;
      font-variant-caps: normal; font-weight: 400; letter-spacing:
      normal; orphans: 2; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial;"><span style="-webkit-font-smoothing: antialiased; box-sizing:
        border-box; font-size: 11pt; font-style: inherit; font-weight:
        inherit;" lang="EN-US"><span style="-webkit-font-smoothing:
          antialiased; box-sizing: border-box; font-style: inherit;
          font-weight: inherit;"><br>
        </span></span></p>
    <div class="moz-cite-prefix">On 11/22/2021 18:19, Kai-Heng Feng
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20211122161927.874291-1-kai.heng.feng@canonical.com">
      <pre class="moz-quote-pre" wrap="">This reverts commit 3ad3e28cb203309fb29022dea41cd65df0583632.

The s0ix series makes e1000e on TGL and ADL fails to work after s2idle
resume.

There doesn't seem to be any solution soon, so revert the whole series.

Bugzilla: <a class="moz-txt-link-freetext" href="https://bugzilla.kernel.org/show_bug.cgi?id=214821">https://bugzilla.kernel.org/show_bug.cgi?id=214821</a>
Signed-off-by: Kai-Heng Feng <a class="moz-txt-link-rfc2396E" href="mailto:kai.heng.feng@canonical.com">&lt;kai.heng.feng@canonical.com&gt;</a>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 44e2dc8328a22..e16b7c0d98089 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6380,16 +6380,10 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 		ew32(CTRL_EXT, mac_data);
 
 		/* DFT control: PHY bit: page769_20[0] = 1
-		 * page769_20[7] - PHY PLL stop
-		 * page769_20[8] - PHY go to the electrical idle
-		 * page769_20[9] - PHY serdes disable
 		 * Gate PPW via EXTCNF_CTRL - set 0x0F00[7] = 1
 		 */
 		e1e_rphy(hw, I82579_DFT_CTRL, &amp;phy_data);
 		phy_data |= BIT(0);
-		phy_data |= BIT(7);
-		phy_data |= BIT(8);
-		phy_data |= BIT(9);
 		e1e_wphy(hw, I82579_DFT_CTRL, phy_data);
 
 		mac_data = er32(EXTCNF_CTRL);
</pre>
    </blockquote>
  </body>
</html>
--------------emeEdc0oxJbETmFEimtXU0F3--

--===============7586573266356969784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============7586573266356969784==--
