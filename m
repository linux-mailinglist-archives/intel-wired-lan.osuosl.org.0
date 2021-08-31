Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEC13FCFB4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 00:57:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01AAF4051B;
	Tue, 31 Aug 2021 22:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V3aQExyBd5Fk; Tue, 31 Aug 2021 22:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0CF840534;
	Tue, 31 Aug 2021 22:57:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 407321BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E259613B3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XuRFHT4NGWnu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Aug 2021 22:57:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 62E736065D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Aug 2021 22:57:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="216736949"
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="216736949"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2021 15:57:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,367,1620716400"; d="scan'208";a="541245615"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 31 Aug 2021 15:57:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 15:57:00 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 31 Aug 2021 15:56:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 31 Aug 2021 15:56:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 31 Aug 2021 15:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cR+LiY94CoUB5TFjq3T72zMBEVLTKqz2iAkn6/NjFcDJw1XC2sf9slVX/ye5lqIlswCzyQ3F8f62pzsxV3cMvO4dGLoStrGVN8dV1E1qMviT0p/daljMY6Y+dIfyLAwT9oHrZJn4xmk8Q5cuy0WjPbRwqZSqV1NzAUwMOiaG0q76rCbfkJVhnxgGBHZtFsV3QnFw8nITYnwbBvYosmJYbbw6kJOD1XU0VO98mnAlvuM3elPVPbHPUOGmo2wSdyrGMZtgREZM1hljUNj+zgyhNfNQPnmZoQczg8qTACTSzobXTFHBKJ/St2F7fBlO+wsJlbHRIvjmZoh/Ghj3gDQJyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaTDmz2yZfkm62+apoj4uKy3sifu5Xe5OxhRHzQdAsA=;
 b=cpJ75oy8OxomoYESnQYATl8VprZi159M4I6cH16uqcSpUgH2xaInOiM+cfiXdl1q+kj+CRZEfJjs12yV/OolxRIr6BcUqMjxhgtfP0+IH1829BnqDvRIwvWeBZeNoJbi8D55Z+qgqxDYvQ3a+I2Axc8BVJLADqqBwX8W2nn4/kbLpHZ/Mq60gecbXSWH2E3VltB+jSoS2KCKltsUSMsFb9nJLNuzyaZd2eFnlRnA7XSiPq7TVCyzlQ8FPpEXHn/RE3+n+qRY7VWyymuzH/jdW4eZZvn78I0EMcJRitPYmHTWD3a9oLZ+DT78ODXU7PFRIKdwQtL/1zWLeddfB2NcxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaTDmz2yZfkm62+apoj4uKy3sifu5Xe5OxhRHzQdAsA=;
 b=EaJjI9uBVhM7evmIQ+/qjNdwQ/IFnblK8Q0MzczhgLSMdxKl4upLUa1nGEKvKeB+rwIgg1NG5tKX/ErPk1W/N74q3rgadIs5M7OvG+OridJ9J/LrS6CWqnMC3pLwEVoN8NavbgGG7Es84Gbor6d818ogBUuVB2fWMgDRuGmjfSA=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2974.namprd11.prod.outlook.com (2603:10b6:805:d7::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.19; Tue, 31 Aug
 2021 22:56:57 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4478.017; Tue, 31 Aug 2021
 22:56:57 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix limit of total number
 of queues to active queues of VF
Thread-Index: AQHXnWzLPom+mgOiPk2EtKbuP1X0jauOPTWA
Date: Tue, 31 Aug 2021 22:56:57 +0000
Message-ID: <5a1a2e60f5e22ea807a142d057a28face0c82a1f.camel@intel.com>
References: <20210830090220.271120-1-karen.sornek@intel.com>
In-Reply-To: <20210830090220.271120-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c7d3475-a4a7-4ff5-cdd1-08d96cd2a2a8
x-ms-traffictypediagnostic: SN6PR11MB2974:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB29748C15EEE6273DFB2B8DA7C6CC9@SN6PR11MB2974.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rvc47nhX1irRczBlah/oTJNAEx7uGZfcVejRmlTo27MoTQXhA1cTGNDpLqim/CFqBNo5RcxDm+MHecI19+1eg+xR0Q6WItMNuX0FrimEuYOYCR/PvSSM5uqTCVqUJtBjoSw2S3tZjDg/DkyXns/Xa17BYc9KtGQ2SHkZxMRF7aUjy/NBJCIpfasFXfhQyw+NG5rfIfJmNXU32Udpo8sFpC1qs0er5cNbTPj2Yt5hZcuhjLXmS4k6G0t7O1y94mGKvsVkh+DzhAMxpwKXH6Nc6m0EL0xzYjS/sTPvOSNYp75tyJo1Nm4Rhzy8Qe6RzM7pjLL9/OwBNcC2dhGJeOqzHo0b0CpaDArkOoANOgwB+yQSPRYjr6dqxju3rLjM9OTWT0/JwGVUch58V/qMm7cMzgcHj/7LeMGQ26EY6pydoSO0FmsvKTx9aeYGR9PrqRFL/d/4Lu0srx6BYBQM40vBJFLhUJNzlPQXsbGDHARrTZaicMzJHp5fn2awQ/vxsxfwiBR7iB096+c9wYT6kYEUzo7W674LWGu+y1MI4NBJ/WV8jp017TAg8mw4YDKlSzZ0U4UplLlJgckJuCT0IddeV/akh8z8EZOozU3jF/tilOC9hH28fhzwFIX9A+Ipz2xoFm1H+U/MGsWthSUJz3DANizZJdRZ1tmiLdoC/dA30MsGFjwFv8su+hzHhFH3HrfVrGdhXEvEDr0ShKH+PfjhKQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(39860400002)(376002)(396003)(136003)(66556008)(316002)(4326008)(91956017)(64756008)(5660300002)(66476007)(66446008)(8676002)(66946007)(38100700002)(76116006)(86362001)(122000001)(2616005)(6512007)(478600001)(107886003)(71200400001)(186003)(8936002)(36756003)(6506007)(2906002)(26005)(6486002)(110136005)(83380400001)(4744005)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V0NUOXdDSHhIUHZWdjBiMWlsZUNNUUZMVGN5N1NtUTlxdnlGNGxTRVg2L3RP?=
 =?utf-8?B?S2g1N0haM2lqekhlRmU4eHFFeXZ5bG1RbHpoODZaOHY3Wmo4Nmx4cWtFT3lT?=
 =?utf-8?B?Z2F5cEo2QlJuNUNtT0dWODN6eDRLTi9iOHh3NGJJa0djdTl1WmJVc1FVZUl1?=
 =?utf-8?B?ajlPekJrYTFuTTgzUGVTK3FBVEFrSDQrSVUxUkNvaWdlU2I3MS8zSE5MMTVn?=
 =?utf-8?B?dTlrRkU5Sk1OZ2JTTWFkWk1FZnd4aDhiVS96cEhFMVdCaHhzVjZ1K0JNRWZa?=
 =?utf-8?B?bGxBWWhvMEVyNmRER05tRDRLYVhRaENGbXZLMlNQRDIrQnpQbmtxWGdnWlc5?=
 =?utf-8?B?bExGK1hYd0htZytBTHBhV3JVMlNPM0pzSktHS1BtQ3ZRWXFLNVJJUjVHVVBs?=
 =?utf-8?B?bU1teDZqcUtEazB4NmF0ZWRWWUllbm1mazdhQktrQjkySzJXNTNoWC9tckNS?=
 =?utf-8?B?YTUrSXJVU3pMblEvdTBwNW1Vd0FqQ2NuZmJTUEM1WUZ5dXQybmpXSjJiVzY5?=
 =?utf-8?B?RS9IWG5ob1dFMG4xSENydVpLMmlEL3Y2Y2hwN3U0Ky9sMUhlbkRjWjB2eVpy?=
 =?utf-8?B?bXp1bnRHUFArSkIxZXhPRitHamFLUGgyc0FhTVlPYTlKczh5ZHRrV1lyeE16?=
 =?utf-8?B?RHRFb3c0TjBKYjZzTmt1SG5WUG1zOURvMGV1aWI0OWxQcjc5SFZIV2lkNzhH?=
 =?utf-8?B?b3YwNWlHUWZ1QjZJZ0hra1RUNDlNMkFvMnNTVU4yZENzc2JmL3oyUHJKVTY4?=
 =?utf-8?B?WXh4TDZDQ3hLbXNKZTRteU42NWtxMjl3aDZubmZGZHhtejZGbGNaRlpQYnVK?=
 =?utf-8?B?NGtZZ1pwNVczY3B0WlNEZ3M2YTlFSDVqVnlxMmY0SE9hS3hKb0hNSDNhVHhq?=
 =?utf-8?B?dkRuTmljNW04TWpCU1M0UUEwa0lNWEY2QklQMEFXM0pVVG11K3ZjdWpPSnF0?=
 =?utf-8?B?K05abmZBUW1yV0piaGZFMnFIRGl6ejNuc3ZQL2MrZUdtVVBWZVh4eVdDWDda?=
 =?utf-8?B?bGd2b3BIMkZpOEtkaEp0RHQraUU3dEUxZUdRMnIyYWRGelBRMlhDYlJOU2pv?=
 =?utf-8?B?QmdmazJLV1JGemMwVWFEZkZ0aFhOTk5tRERzV3VmNlhJUVJTSEZLc21iNit0?=
 =?utf-8?B?cWI1ZWZ6SEFUbjd2WlJNVWFISGVTK2MzRDJ5ay9sVUFHeWxxODB5bVZXRTEv?=
 =?utf-8?B?bXlHQWdJQXU4VzZVWHRqS0pzQzF4TmlpNERPUndQZnpEdjloeVdsNW9naStO?=
 =?utf-8?B?WnRHUE9UTlRXc3JVNWpqSThuZTM1V2FrUk03cWM1c2RXc1BQMi90d0RpTkhG?=
 =?utf-8?B?bVdTd3ViZGdDUkRwTU1DQmhBVVdsak9CTEJ1c0w1K1VkTjdyZ1NVekd6cXFW?=
 =?utf-8?B?Zk52bytPZEE2dHNLTHFSa0hBbHRQZWhGT3NHUS9jeXlnVCs0ZVZNcFM4dWR1?=
 =?utf-8?B?cnlKZnBTWlpwWmNpMFVWR01yTVRISUNzV3BmdkJYTUt4YVVwVHQ1VTNZQkpq?=
 =?utf-8?B?U2thY2xwcStya3ZoQ01NejZjVTRaVjlzVCs4VHhJeExpakppZWpUUFRXTTE4?=
 =?utf-8?B?SkRMUXJnVlVjSDBpL3A3ZCtIR1JZNkJ0d0JqcnhpcGhoQ0NrTnJWTFFna0J5?=
 =?utf-8?B?RVduZU92cUYrb011ajF4bElwSHRMMEUxVTI4MG5PU0FNZzkwRS9sKzF0a2Qw?=
 =?utf-8?B?TjRzQ21ZQmJ2MkZra0UxRGxSTk5TUm14V01xWmVhOGRCcU1Wc3ZNMVd2cTRQ?=
 =?utf-8?B?QXN1UXZTTDFXT3pEODlrQnFMbldVUFlpeWRScGlwQXNKanBjSVNqTVFhSnhR?=
 =?utf-8?B?bjV0bXhPTGZFMFFOSGptdz09?=
Content-ID: <818A9A5BBF425243B37FF37A506C52FE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7d3475-a4a7-4ff5-cdd1-08d96cd2a2a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 22:56:57.6550 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wo0u82Df9Qimb569slmY4pRy1VmbbdYsuRJXGlW2EaBd2PEiPVJQWc+l42MGXszw5rB4hiyZDhlsxCwTr5PxkBUcxlK3vIvQlV41f3d2Ing=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2974
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix limit of total
 number of queues to active queues of VF
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
Cc: "ashwin.vijayavel@intel.com" <ashwin.vijayavel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2021-08-30 at 11:02 +0200, Karen Sornek wrote:
> In the absence of this validation, if the user requests to
> configure queues more than the enabled queues, it results in
> sending the requested number of queues to the kernel stack
> (due to the asynchronous nature of VF response), in which
> case the stack might pick a queue to transmit that is not
> enabled and result in Tx hang. Fix this bug by
> limiting the total number of queues allocated for VF to
> active queues of VF.
> 
> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new
> name")


I believe this commit is more appropriate?
d5b33d024496 ("i40evf: add ndo_setup_tc callback to i40evf")


> Signed-off-by: Ashwin Vijayavel <ashwin.vijayavel@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
