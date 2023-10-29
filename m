Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 739EE7DAC71
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Oct 2023 13:25:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB5F27059D;
	Sun, 29 Oct 2023 12:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EB5F27059D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698582338;
	bh=tzemYakkk+cue3bE75mdtn17ZSCUSi84bL6Lk9j5pxw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kTIBN5gRFIwqxL+E6WPaX9a1nhG593aKgB+4//9EG6C0Mhh6vNbasAj4F1cvUH0IB
	 5ep+Ef3aZH2qQjNCGgkq0lPF/iM+kj7JTEZTGqL5De7pom/BzeCjqZZZ7e9bUZ53dR
	 9eQu9kPo+Kzsm/68I8NDMMYvmL4j99HUdFmDxNqjWAUrM4TzhMaVtizqfMRohcteRU
	 7Vv5obT04f7gJUZxNTT4NU8mRqqDUrZ+GuQ6RbeTZ5Pbm3r3og8s0TagjBt8mrdtpM
	 N87o6v3hQpAGKC2IuHg5/+VQsmsjKfOIkECFFRYX4z/P17/pxZep8Z/xRxKMqhsuvE
	 PIVs/bOdofFtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ctI9e9i_tkKZ; Sun, 29 Oct 2023 12:25:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE7DC7058B;
	Sun, 29 Oct 2023 12:25:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE7DC7058B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 269371BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F225F70591
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F225F70591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tnckcaDxrXtl for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Oct 2023 12:25:30 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2085.outbound.protection.outlook.com [40.107.93.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 68D0F7058B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Oct 2023 12:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68D0F7058B
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMn9rezGse9sS4FzEfLiZMbFmuy91B1PLMhw4xJXcyyn4laQZL8xkSZPG1SZPBj/D0L9dpikEynEC7LjmidLo/Rs9aPLwwo2KLmx8PBJn/YV9PZC9aXA6nBXR27zbghi10jagl8fNyhNgStA3LYWe3F/+b6WxkZgY+9OjYzWoVPtjfJEAU1H3Ux4AUWbylw6Ta8eFIr48UKKlIlfJ5BnPxFl+MSWF7SdllB/4QBXLUjIg9b8/6GJlRnx1IwTCm1UOioBPnut9Ep+S6Nq4TWU/ao+rbMOkdJpiO6EyR0kOk7hPq3MzdQxL1oMIR1fK6LahT9Lheu9+wlbIXx2KR3U/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YLyDC5owd670AGutfaz9St/Fhjhrzeryfc47ZSTTSFw=;
 b=bn4u2RkRiD7Rfvcg4ubYoqpqTcLmrQEBP52otIqIMwkE+rodToROZSLTdMCgjMppTzMZkqU47uaQkVDn5AcDD2FxYqO7O11Qy75aurfg/MNa0sgl3gBNxQQl+9hBU39lnkqRICaldN9Zy86qmgeDrgvkuQIt94e59rFRu301p+f2r6rbBvwGYH1QQA9YioivTrkgvKCAzW8vqWKBLetmoxKMHlJL9M9y7hfNNH/8ov7GUsu7/f0Fi02s/+BcSGewH2eskGBIDKcNWvgEkdqkk0zIxamC/GkGpmmPCy5f0juQcEvVXQuvMIRjIrIjGhXt0vjH8sb/BteksNxTwJ/zYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DS7PR12MB6288.namprd12.prod.outlook.com (2603:10b6:8:93::7) by
 PH0PR12MB8050.namprd12.prod.outlook.com (2603:10b6:510:26e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.26; Sun, 29 Oct 2023 12:25:27 +0000
Received: from DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6]) by DS7PR12MB6288.namprd12.prod.outlook.com
 ([fe80::8cde:e637:db89:eae6%5]) with mapi id 15.20.6933.025; Sun, 29 Oct 2023
 12:25:26 +0000
Message-ID: <89e63967-46c4-49fe-87bc-331c7c2f6aab@nvidia.com>
Date: Sun, 29 Oct 2023 14:25:17 +0200
User-Agent: Mozilla Thunderbird
To: Ahmed Zaki <ahmed.zaki@intel.com>, Jakub Kicinski <kuba@kernel.org>
References: <20231016154937.41224-1-ahmed.zaki@intel.com>
 <20231016154937.41224-2-ahmed.zaki@intel.com>
 <8d1b1494cfd733530be887806385cde70e077ed1.camel@gmail.com>
 <26812a57-bdd8-4a39-8dd2-b0ebcfd1073e@intel.com>
 <CAKgT0Ud7JjUiE32jJbMbBGVexrndSCepG54PcGYWHJ+OC9pOtQ@mail.gmail.com>
 <14feb89d-7b4a-40c5-8983-5ef331953224@intel.com>
 <CAKgT0UfcT5cEDRBzCxU9UrQzbBEgFt89vJZjz8Tow=yAfEYERw@mail.gmail.com>
 <20231016163059.23799429@kernel.org>
 <CAKgT0Udyvmxap_F+yFJZiY44sKi+_zOjUjbVYO=TqeW4p0hxrA@mail.gmail.com>
 <20231017131727.78e96449@kernel.org>
 <CAKgT0Ud4PX1Y6GO9rW+Nvr_y862Cbv3Fpn+YX4wFHEos9rugJA@mail.gmail.com>
 <20231017173448.3f1c35aa@kernel.org>
 <CAKgT0Udz+YdkmtO2Gbhr7CccHtBbTpKich4er3qQXY-b2inUoA@mail.gmail.com>
 <20231018165020.55cc4a79@kernel.org>
 <45c6ab9f-50f6-4e9e-a035-060a4491bded@intel.com>
 <20231020153316.1c152c80@kernel.org>
 <c2c0dbe8-eee5-4e87-a115-7424ba06d21b@intel.com>
 <20231020164917.69d5cd44@kernel.org>
 <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
Content-Language: en-US
From: Gal Pressman <gal@nvidia.com>
In-Reply-To: <f6ab0dc1-b5d5-4fff-9ee2-69d21388d4ca@intel.com>
X-ClientProxiedBy: LO4P123CA0613.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:314::19) To DS7PR12MB6288.namprd12.prod.outlook.com
 (2603:10b6:8:93::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB6288:EE_|PH0PR12MB8050:EE_
X-MS-Office365-Filtering-Correlation-Id: d21ae012-8fbb-43e6-81d6-08dbd87a216c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Iq9FhRl9o3OfyWkJj31V3RYSuGBH3kLw0ybJlVWtWnBghfW8DAmqJHt7/K6zpEiFQkdMoWmL+crOcKOgITngVDbj05n0NvLa3RRbbKllUtkGDJTJYygFbjWHeKAZwOstpZoSxmdC9ru++arnTj9ax1Wa3lP7l+L8Z7Zw8INRznTenJQsNMknQyvrOF4CpJvwBT2ywYWF/c7l88hLunxUMfMHmw8dhLMFSXVCmT7nnYvvVqzqTMpcqjeOfAlZxS8S87n0qBrTHT0MwEj7GC4tK30lERZJEwaeKEKrS5Oc7+I7v7VfAUN2v3Lwdua5rdiexQwkBFjqS+4mZZ7q7RJvlvH7lbx9lLsZ3yDg2wzknpLzkUbWuVwGAEuBuxZpymzDeG/Na1wLQz5Ff7xhOG9kke8Rd7KGu0G+QKo2byDLnxhHX08OqzvCiVfSC+h7e53FGRgoxxNnS9g8V+Y+fangnI19hho0Pi6MvshXyvTtcYzpiM+uW+rlhdcJ41PeYqqRLDvFJfSGLjYFfP82aK6rvNo7Tl/esh7KxFr1Xo3iS2A3rpn4hTga94H1ogW4PwKG4tj43rFb4feQFpjABdnjw1jG2YlRAi2lAAmrMGnM0H8Fz6EmNkU7zK7jpjATeK36a+BvaJeslZOxAMfYctdFesFQ7jBftlZNkgsXDQP35eAc2oNTw+c3Iyb2Oo5Z12p
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR12MB6288.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(136003)(366004)(346002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(54906003)(316002)(4001150100001)(7416002)(66556008)(66476007)(66946007)(2906002)(110136005)(478600001)(86362001)(31696002)(36756003)(6486002)(966005)(4326008)(41300700001)(8676002)(8936002)(5660300002)(53546011)(31686004)(2616005)(83380400001)(6512007)(6666004)(26005)(6506007)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXJCMFhvQm9uUG9KK0xBZkk2ZjZSQ21zZ21QNUlWd2lJQXpoVjVPVUZzRUpo?=
 =?utf-8?B?RnJQK1dWVS90NjdQVjZjMkZiejh2VTNxdUpJNkNrb3ZDbFo0OUhGbmErcFM4?=
 =?utf-8?B?dXJkRFdhNFN5Sm01REJvT3h1QWVYZ1Bkb1BFbTl3L0xPR2NFUUFmYW1uazFC?=
 =?utf-8?B?WUNha252d2RTOUt3Vi9sUzhXMnByRlNROE52RURnaWFtR204OXErdS8veEFp?=
 =?utf-8?B?ZWNEQVZpYStGbCtvSUNHeHUzZXNNOUdsUEdBaFpWN1JBQTViRlNNQjh1UFFq?=
 =?utf-8?B?Y2Fwc0JMR0xEOEdmMWRQdmtkZktkZkpCRDBCRGkzRCtLK0RHWUhiZWJzSTJK?=
 =?utf-8?B?UlRDc0I4UWRXNm91VGQwK21rT2tpcGRlK1hwUUZxbFpDdEdIeXVzS0VzY3E5?=
 =?utf-8?B?ZE44NTlIbyttekIxQUJjTE94UVJoeVFtUmF4TXJ2S2dqQ3p1Q09xQVk4Lyth?=
 =?utf-8?B?c1FhbjlBMWNRYTdKTGUwcDE2elkxcU5VSUM2TW9zMVB2RVFlMXQxMjVCSkZr?=
 =?utf-8?B?Wm5DRHJsanphZnVLR2orQzArVlltbFpBMUNrSW9FMjFqRVZSWWV0ZnBkM0pU?=
 =?utf-8?B?M3JFR0VMVEg5b0M5b0J4NkE0RGJMT2lPK1B5aXk3eXpBb2RIY0Rhb3p3OVhW?=
 =?utf-8?B?N3FwMzBkV05uVG9lRlJ4cUUyK0lTREpGZzlJZ09BZmdjUnZrTnhkaWZmQjRl?=
 =?utf-8?B?UVFHWm5Ud2w5YjNreWFPSFRjMUdqNUowS3R3bHNRNUowQUVxbnF2S3Nyb1pr?=
 =?utf-8?B?YzZhUC83bnRNVEZGcENrYlJ0TitDVVR5d1lHSFcvZWhPTkZienFqUzlpWFNQ?=
 =?utf-8?B?elltaUxBWDQwQnI3cHlTWVZSY0NkTlJ6ZUttWEo0WWpLQzE5SjlidzgycTVx?=
 =?utf-8?B?Q1V2Znorb2ZlTDRDR2txbi9WbmF1cWRORjhSZmZDUzhPVytIYUl1Tmd3V0x4?=
 =?utf-8?B?eUlWNnJIeXhudCsyejk5QzhRVXY4WXcvSE00R0ZIZkRnVEpmQ3lFZHVQay9I?=
 =?utf-8?B?UTdJT1VXdDZheVlCWGswdDRjTmoxeW5JRVB3dmZqWFI5dDBFSTBkczNwd0lM?=
 =?utf-8?B?TVdjMEVvVm1EdmZ2MUd6c1RxdUtidTNseSszS3VUOUZLYlU2N01vTnkraFk3?=
 =?utf-8?B?Sjc5cTdyVkxwZTRydUdJOWpaTXRDUlFOVFlGU09hRUZyamJWTHdIelNmY1JQ?=
 =?utf-8?B?WDlkcDJKWVJlNnlLWkVzbmVwZGlCVm1aTHVEZWUzdTJmUXAybGVmZTF4cEVN?=
 =?utf-8?B?SG1IL080S3hQNnlJZ3RBeXhGVC9uN2lLb0JHVm90M3ZTNUlHY0ZSaE1QcGI4?=
 =?utf-8?B?a3d1dk4yYnBUaUJ4ZkQ4RVRlV2xzSDlCdmpYZVFoV0pJNjIwb1VXT3FhRnU1?=
 =?utf-8?B?dkREeFhmRGI0bENLV1RiSkVxTnJvMDh2aXdXSXk1R1kzSFdiTTNEZWRXWjh5?=
 =?utf-8?B?MEtiZ3o4d2dmU2VSME1ieURPR0xkbC9ObTJHYWNxZEQwTTNwcUhzd2NJYWpR?=
 =?utf-8?B?SHlsZTdUY3RId08wV3lVMlo2VjJpdmkxclhLcmZVTkxTTmVPQ0drWGt6bmo4?=
 =?utf-8?B?b0hDV3VsU0ttMXlPTzZNeEhNU0pZb1p4VSt1RDF3ZjNJZUVxR3h5cGxLTDFk?=
 =?utf-8?B?emlWUTYveDBKUUNkSXRHSHJXdmwrR0UzNE5MTFhtUFB4L1Fhajc0TnB4YzB2?=
 =?utf-8?B?L0dUbGgzR2hiZCtkWmtQK1pVb1ZyaHhtN1A1SmRBNElpN3YxdUhVMTF6REx5?=
 =?utf-8?B?Wk1RYk5ncjkxTFNGWCtQc1Z6TnVWU0x6SzlKSlJnMlZ4cE5GYVM3NDArS1J5?=
 =?utf-8?B?bFFvRzFJVUdjMyt3VmxFalhsUmN4cVQvZU1FOUU4MGZCa0NVSEM1cGNJajIw?=
 =?utf-8?B?Y2JWVjFDbmVQUHB5eTJVQllHQU9US3lQeTZlVkZPdEN6anV4TXozVVh4TGEv?=
 =?utf-8?B?eTlERXhFRkt5ejY2Y1Y3b0NTUUVMdmhNWENnRWFFMzI3SjFFdTkrUjREbGdy?=
 =?utf-8?B?dkx5VGhtNVRReUVLQ08xakFXYWxJdTlGUmhycGJyZGZxZXo1aW0xR2RtLzlz?=
 =?utf-8?B?SkdVWXQzQ2QyUHB6dCtvVm5hbW1aSnBsTzRkN2k5NXNrbzV5M1M5dDR6TWEr?=
 =?utf-8?Q?6hqSCI836CK49GUZ7HR8wwCPb?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d21ae012-8fbb-43e6-81d6-08dbd87a216c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB6288.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2023 12:25:26.6456 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8/mfRe9LylwgWs12NonfknIyOLAYsFAnM2Pu5dNEHAA1CLZKINCmpk7RxQpaYV2Y
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB8050
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YLyDC5owd670AGutfaz9St/Fhjhrzeryfc47ZSTTSFw=;
 b=Pyw5QOKjGmBh1IwBBJcVlJ6H/TK7iK+JZFBKNQuIxtsONNgAWQHrfvwY70Y9CO+w7RY9m618ynpcQwnrGI8JCmetiluoKYdlZUSX4/cMOcMrwFMYbvrVZFyPPHe43WpqDyE8jVRYvDe3w4bfbUGuu8j0ytECeyte/Z+sJPTDY7Y0wsdxZISbatRTv7q/u6H4H6/gyCf43o7tb30RJxeE7wMkPY1rj5tfS3GEve2BX7DgwpOxuu0JaGn3edVnWFQZGyNaKZxxKqd1C1fMe+z3pRIM2thRKOtNnWTCblNysdldPjNLx+rGjELnrwIuGWN1YQ1TRjm1N6FSfWAuD9Gf0g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=Pyw5QOKj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch, willemdebruijn.kernel@gmail.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 vladimir.oltean@nxp.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 21/10/2023 3:00, Ahmed Zaki wrote:
> 
> 
> On 2023-10-20 17:49, Jakub Kicinski wrote:
>> On Fri, 20 Oct 2023 17:14:11 -0600 Ahmed Zaki wrote:
>>> I replied to that here:
>>>
>>> https://lore.kernel.org/all/afb4a06f-cfba-47ba-adb3-09bea7cb5f00@intel.com/
>>>
>>> I am kind of confused now so please bear with me. ethtool either sends
>>> "ethtool_rxfh" or "ethtool_rxnfc". AFAIK "ethtool_rxfh" is the interface
>>> for "ethtool -X" which is used to set the RSS algorithm. But we kind of
>>> agreed to go with "ethtool -U|-N" for symmetric-xor, and that uses
>>> "ethtool_rxnfc" (as implemented in this series).
>>
>> I have no strong preference. Sounds like Alex prefers to keep it closer
>> to algo, which is "ethtool_rxfh".
>>
>>> Do you mean use "ethtool_rxfh" instead of "ethtool_rxnfc"? how would
>>> that work on the ethtool user interface?
>>
>> I don't know what you're asking of us. If you find the code to confusing
>> maybe someone at Intel can help you :|
> 
> The code is straightforward. I am confused by the requirements: don't
> add a new algorithm but use "ethtool_rxfh".
> 
> I'll see if I can get more help, may be I am missing something.
> 

What was the decision here?
Is this going to be exposed through ethtool -N or -X?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
