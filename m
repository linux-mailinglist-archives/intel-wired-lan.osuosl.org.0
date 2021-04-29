Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A27036EDF4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Apr 2021 18:15:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64BBF419BE;
	Thu, 29 Apr 2021 16:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8YtJpFlxt2Uu; Thu, 29 Apr 2021 16:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0806F4199A;
	Thu, 29 Apr 2021 16:15:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20E771BF3CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 16:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0F4308458F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 16:15:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BT3pWmB-hRKB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Apr 2021 16:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE4B7844DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 16:15:21 +0000 (UTC)
IronPort-SDR: Ll3BRdO2/NZ7198tASrAWqKjAVwF/ergJ8F4ucBGAIVMj2Oe2SxduOfxgZST/Ml8yrWtt5Qi2u
 7LJIjRiPBuGw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="177154628"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="177154628"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 09:15:19 -0700
IronPort-SDR: 3M81UBbIGJ+SvlQVobSS8tOm/Q9mQkNRmTEHKAZGxvwF64jx1LXHLrbIqMZBEuky0zqA38Ubww
 m6R8fqDPPRpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="527013415"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2021 09:15:19 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 09:15:18 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 29 Apr 2021 09:15:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 29 Apr 2021 09:15:18 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 29 Apr 2021 09:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aVN8w5sr/3tiZLZ+XKdKpF0bZi1Ht7YWESKWgm09HpSve0O8wvFjRbKLWDZobx59mJJPRGQY790uqz6j1OF0GeOLYvbGGMBWo+B6A8wUQ9BkI3IxQZTNbBXXmv/bmY89Kq/PrK/XNNO3y9Ebr0m6t4al6TaC3oYhWckF/5rlaSFdODdxYlj5bR2prgMj4M0z7P6TUbvkrc9fz4uGLX47IsSaihe6tAkUoG3A52u2R8Ghkyf63q673oCmiSaHn97+HI5yoGEcgGO843RzZKyvvFCh/MejxKZ8F46pLnModO62RLGnUMnyFikEMgimnc9HE3eYh3S5iiVngmx/efi5aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJwpDbD80SRM3rjqrDYEh/l6S/89s84gKkPxRZS03fM=;
 b=H6ulpg5KUFVVm9K58JSXiGITI6H6dUG6mWXQKMOMSXbuR8FDbnS4Si4Wvt3Ow7Q9miPHNLiw1OrAcshHQCRffSAm0pnZE1s3KF+0QIkdlO+mPwApQAtsNbbH829GmbWR258EKvlM5bZbfQJLQo8NRKklblLBYa48ZsEOng9dEwJn7/q9WNpNtP+siw4uB6DYm6kCzjVSM75Uwka7Gk1BUTKa5lljNytlq2abS43FdwyS7M1/3tHI3zFiceyMKxyQHn5uMSt/+dRUrnQjV/tGi7DRBnjwZsEljPRmZcsvYrdQnvEhldB4bGY36lA6IF/gS/EBhj/pPkxv8w3qGONKpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AJwpDbD80SRM3rjqrDYEh/l6S/89s84gKkPxRZS03fM=;
 b=E+z7kB/Wb2eYl06bV6kgSPnDgd0QZeZbunpnIXyreJKn5LuQR/aeW+gLT501WNrn0J5qj6IRfbSXccBcjZYzTrzV6ERUr2IVha3iICygsHbuk2OEi5+/qRFT7hCeujEw4vEULKSFB4gA+G05LklVNcbkKHS14GJDBp7dzzYCBn0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 29 Apr
 2021 16:15:16 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4065.033; Thu, 29 Apr 2021
 16:15:16 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "magnus.karlsson@gmail.com" <magnus.karlsson@gmail.com>,
 "brouer@redhat.com" <brouer@redhat.com>
Thread-Topic: [PATCH intel-net] i40e: fix broken XDP support
Thread-Index: AQHXOo1QOcdFIw10YkWxQQA5rzpJXqrLOgUAgAB2jYA=
Date: Thu, 29 Apr 2021 16:15:15 +0000
Message-ID: <e1d4c3da623201bbbe9395477d7cd077638b4bf6.camel@intel.com>
References: <20210426111401.28369-1-magnus.karlsson@gmail.com>
 <20210429111056.2174ee76@carbon>
In-Reply-To: <20210429111056.2174ee76@carbon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94e8deb9-a0fb-4077-2c70-08d90b29f9c0
x-ms-traffictypediagnostic: SA0PR11MB4557:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB45576026590DFB7FBD7CD6FBC65F9@SA0PR11MB4557.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dz3938pU+Rs/RVkMHK3SoQbR9Vv0+UPMRoQr92JFmMN62HmT5VaWOxqV+6yL0XZgdhfmDNN9gSYH2rD7fd/rbDJNF0OLdKpQxb3rlYbfzPNbC4n5uOHGhXfn4w6N5U4z1YwM5IhlLL7oAq1NyYqfLP1WaVFHnfk/ydk1m5/HqLd5fUNA0zytOIDHEzambL5sCC8YjmE1wkwzN22/QEe7D6Cco9LCRymzaNt7udumeFzE0q3X7XeQARA6f5j56PprtCd7FQz2Jpf/914hM4wOzHczZMDraJQ/uuwJcQEpxX+7IABbTbTEzPhoX2/aXviH+WajT+zj1i9WJp0FiSf+NUu8W+qvsY8d0sg53H/eveDDDf/KxbDEwJ/G1JqM/Dtrt/0J0k47l9t1w8zshPQGA+T3F648FO0sRQtsESGXHyhztzdfJUQIAVheAnwTUMdj3/WRY2uYfMp4iikYgvnCIYNddediKocFv9Xppm9dzPdrnbi1uH6OtnBpO7uIGOlZpB2fjxD2fzgbVWmresK1v2iHksbwBRm76q/jc/7LEB1hTgD3L1QnV94Pwr1d5yDwGahyovpVeg79tiLmP3/xS1a6SSh5Y/PwKUwxyexRO+UifZntIyKvoE1MjUTYV21NfwrIls234N22T3Q91JNUsnrOSf5p6q2I56i3c1x5NcTvn5EEilQsX3tnVIZBas9qow1+XczpTAyknFDXinQo7dUIUuuJtBxWVKXTeg0QA1o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(376002)(346002)(396003)(366004)(136003)(4326008)(2906002)(64756008)(76116006)(6512007)(8936002)(8676002)(26005)(122000001)(66946007)(83380400001)(6486002)(54906003)(110136005)(6506007)(36756003)(186003)(71200400001)(2616005)(86362001)(66556008)(38100700002)(66446008)(316002)(66476007)(91956017)(478600001)(5660300002)(966005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?N0FyeTBTU08yUTJ5THRaeHg5aENOOFUwV3FRd0R1ckdJN1R5Mjk1czJPR0tx?=
 =?utf-8?B?Q2VGMStzQ3VEeURFU0szcXQwVWRtMDJGa1k5Uk5VZGUySTVrT1pON280Qk92?=
 =?utf-8?B?Z2tkem9jaW9xNksrNkdFZjl3OEo4V2hhcm44c3JJajVxZjlVVFJRajcySXk3?=
 =?utf-8?B?RjlUaDI1R3NYNG50NVFSb0NOQXhkQXRyeStHY3ZUYVBFV0dtR2dPRnpDVDJT?=
 =?utf-8?B?MGR5Z0JzU2Y3Z0ppcGdmOE0ybnBZeVg4eldRbnd2NGxyMkJ2UEVGV290TkFD?=
 =?utf-8?B?dmRYV3orSThsTm9XUDZUU05xL3JVdjBxQUFBZitFOEZZeGpTUHVHdnBSVzVw?=
 =?utf-8?B?T3NPVDh3N1N4eHRJbjdWUXB0MDJYeE1VeTBpbnI1Ti9qaEsyR1E0MWt5T05D?=
 =?utf-8?B?Q2h0alFsT0NjY0l0WE5RdVordk9KWFpidVYwQmhHa3Z1YnhFQStSdzgzUzFi?=
 =?utf-8?B?TmtBWlMwbVFrZWVOOFloLzdGSGIrMDVpQitINGJsdGRVMXliclVxVXJzbjA0?=
 =?utf-8?B?bG9udGdGZjR3R2l4d0hKZkFSRG5ZTnJiK3ZxblkxeGp2UDJ6M3dUYTJnU1Jn?=
 =?utf-8?B?eW5XZXM4cURYM0ZUVXlaQzM1anBpbmR6c0xiOVpRV215WlhBVC9QODNackFT?=
 =?utf-8?B?bHFsbnFsbGlxTnA1ZEJVWVJhT1FaVDJxb0hOSUxkb09hU1FWL3drZFcrbUFX?=
 =?utf-8?B?M1FQNlNjRFNXbW9NOHE1ZGpYeHFSMXR2WHhUbEs4MUZzWVY5TlFVZDl3eEZS?=
 =?utf-8?B?cUhDczNaTENHYmFoejY4RG03Qm9la0lVZnA2am9kLzdWQ3dJMlRsbFhHY2Ur?=
 =?utf-8?B?YUEyY1BJelZLOS9SbmdYeGtqS0wzSUg5T0tnQmsrUmdFMkFRR3VVcHhvWm03?=
 =?utf-8?B?Z0p3cmxkMjZPQXg1RW9zczB2WXRsZlNQS1ZkMi9RR0hMYnFYTHlIOGtNVjJx?=
 =?utf-8?B?cUpXMnU4OTljZVZSbTV0VzFRcFkrU0M1N004SFJzd0ZXMXd4YXVWL0Z0VGVK?=
 =?utf-8?B?N0NhQ09ZOElobEZMQzV5YjlxMXAwa1JRUUF4dElXNzhvRUlySXdlZ1FrMXdj?=
 =?utf-8?B?eFhkdno2UXpERjVYYk5HZmN6OTFBYWxpeUh5YlBmQTZ4R2ttaEEzZXlTN2k3?=
 =?utf-8?B?UHY2Y3QxYlhGVFFKTVVNWEVKa2Y0QXV5cDBKZURmQXBrUVVoUml6THJyN1E5?=
 =?utf-8?B?MkFHOXc3QWJIOGJ5UzFlUSszaCs3TzdZMUtCK3dDZXZYUGF6eHRxUXFMbkRk?=
 =?utf-8?B?L0FxZW5CUW5mQWI3bWZZL0N0Z1hJUEFYYWpIQUxXUVY4QUlIM0lSK0VuYUJt?=
 =?utf-8?B?T3pGbkI2ZWcvK2F0WFNGaFdRSGVZenNrVmJpMHRyMlNxY24wRk9qeUd0SDNk?=
 =?utf-8?B?U2l2eGp0Y1JZRk4rUGxnQzNibWQ5NzBNeFVVdTdmdTFjdkhPOEZlanFEeEZu?=
 =?utf-8?B?MkxuNUVqQ1orTzZHaFhvUk1FS2dIRmtqRmkvTHJsenFVMDJpaitwcFpGNndw?=
 =?utf-8?B?dDhESkpySDltSXFSeExLVCtUNGZBcGd0OE13bDBnVmN2R1BUZXUwQllaUXpF?=
 =?utf-8?B?OG14VnJtbmoxbEs3NTBTVm5qVzEvVnBlVmdIdzloR0dwemFzV3BoejJ1MFZG?=
 =?utf-8?B?SW9ZRno0emRzY0lOSEhib0piaWRGZjlYZ29saUZPb2dWZERseTFteXBrcWpR?=
 =?utf-8?B?d0ZIYW1mYlFwUzErcXloRmVvbk5zZThNN1RPSDFuR1BBM2lkSkVOaW44NzJM?=
 =?utf-8?B?MkVQWUtaeWZRZmxCaHRtZC80U3Zxb1NuZmU1Z2tHY1JaU3BlY0hIUmJVQnUw?=
 =?utf-8?B?NGttK3QvUExMYjZYV3hWQT09?=
Content-ID: <6C32E0C25D3746468A03E5F2DE784533@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e8deb9-a0fb-4077-2c70-08d90b29f9c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2021 16:15:16.0128 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0t2vPUXbeEYdliJUGe7XJEdAE/0NztxRUy5DT7h0e1k6rUeIBP3HSih2XtbgyR6rBTLo3OqBO+YEY/pwr78UBoT7FU8a8edOlKlELfiyBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-net] i40e: fix broken XDP support
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
Cc: "haliu@redhat.com" <haliu@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-04-29 at 11:10 +0200, Jesper Dangaard Brouer wrote:
> Hi Tony, (+ Kuba and DaveM),
> 
> What is the status on this patch[2] that fixes a crash[1] for i40e
> driver?

They are currently applied to the Intel-wired-lan tree[1] awaiting
validation.

> I'm getting offlist and internal IRC questions to why i40e doesn't
> work, and I noticed that it seems this have not been applied.
> 
> I don't see it in net-next or net tree... would it make sense to
> route
> this via DaveM, or does it depend on the other fixes for i40e.

There are no other dependent changes I'm aware of. As this resolves the
issue for you, I'll go ahead and send this patch to DaveM.

Thanks,
Tony


[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20210426111401.28369-1-magnus.karlsson@gmail.com/

> [1] https://lore.kernel.org/netdev/20210422170508.22c58226@carbon/
> [2] 
> https://patchwork.kernel.org/project/netdevbpf/patch/20210426111401.28369-1-magnus.karlsson@gmail.com/
> 
> (top-post)
> 
> On Mon, 26 Apr 2021 13:14:01 +0200
> Magnus Karlsson <magnus.karlsson@gmail.com> wrote:
> 
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> > 
> > Commit 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
> > broke
> > XDP support in the i40e driver. That commit was fixing a sparse
> > error
> > in the code by introducing a new variable xdp_res instead of
> > overloading this into the skb pointer. The problem is that the code
> > later uses the skb pointer in if statements and these where not
> > extended to also test for the new xdp_res variable. Fix this by
> > adding
> > the correct tests for xdp_res in these places.
> > 
> > The skb pointer was used to store the result of the XDP program by
> > overloading the results in the errror pointer
> > ERR_PTR(-result). Therefore, the allocation failure test that used
> > to
> > only test for !skb now need to be extended to also consider
> > !xdp_res.
> > 
> > i40e_cleanup_headers() had a check that based on the skb value
> > being
> > an error pointer, i.e. a result from the XDP program != XDP_PASS,
> > and
> > if so start to process a new packet immediately, instead of
> > populating
> > skb fields and sending the skb to the stack. This check is not
> > needed
> > anymore, since we have added an explicit test for xdp_res being set
> > and if so just do continue to pick the next packet from the NIC.
> > 
> > v1 -> v2:
> > 
> > * Improved commit message.
> > 
> > * Restored the xdp_res = 0 initialization to its original place
> >   outside the per-packet loop. The original reason to move it
> > inside
> >   the loop was that it was only initialized inside the loop code if
> >   skb was not set. But as skb can only be non-null if we have
> > packets
> >   consisting of multiple frames (skb is set for all frames except
> > the
> >   last one in a packet) and when this is true XDP cannot be active,
> > so
> >   this does not matter. xdp_res == 0 is the same as I40E_XDP_PASS
> >   which is the default action if XDP is not active and it is then
> > true
> >   for every single packet in this case.
> > 
> > Fixes: 12738ac4754e ("i40e: Fix sparse errors in i40e_txrx.c")
> > Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
> > Tested-by: Jesper Dangaard Brouer <brouer@redhat.com>
> > Reported-by: Jesper Dangaard Brouer <brouer@redhat.com>
> > Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
