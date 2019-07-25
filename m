Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B0D275314
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 17:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09C3186ED5;
	Thu, 25 Jul 2019 15:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8AABBdLRBHvb; Thu, 25 Jul 2019 15:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C33DD86ECC;
	Thu, 25 Jul 2019 15:43:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 358B81BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EF0787EB5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1dOIUxBG6is for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 15:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 22DCE88162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 15:43:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id i189so22960597pfg.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 08:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version; bh=fnr6pBwaZHgrvTrsWM0lWf29ZYtVudcvDA0tXClUAIk=;
 b=gxTUCmi61k8oCloWLGbyuaU+8sKP1tpWvDlX3UC7PUQ6qUZgnhmhR21mKOah/E+yap
 ojXtojkZYWZxjGfsIC46db8zt3mLHOf5X8elBHkNi374kSVvwfCgnN8gpoD3l8l3Xu75
 fEYjaDF8sKc9Vkqp6wcRMHY8Fd0SOmT+CV2Cd3NOtYIcXlCzNfwFPAvW2cjFx7SZHVh8
 asChtjFOAbZXNHKYlKCENY6cvtnlLfRkW9RBdk6pFsBHcNmIuN+xahJNHOefqFmKSy8O
 x5L5bODT/ttqd+GthkjXVIO+1aRFCJeGzQ8dTTqbnbSQnDLLpYjvsubZIwc1eN93f8L0
 IcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version;
 bh=fnr6pBwaZHgrvTrsWM0lWf29ZYtVudcvDA0tXClUAIk=;
 b=r2/7mcQ+qI8r1vNJDAqFkEOd1HXzbGx80p7+3dDAPr4rOr0VeDdltJXQgPt/4Rtc0u
 wFsYNHcJjL2O3J8xHijlCmovShqYdNpie+gM4cCLVk1A+lbewvbZesdXCAvh3FEIiyYU
 gafoUxgkRn8yqIEXofSlJXHscgWnsjde90t7kP+zn6RpmTRmcXKKsiP66COwQdw015H7
 BIRhoKRXyl/LR/kSGM/3LvSGlbNkhxflqS89HBAecaGqUKIQQk/gQjtlSah9ygiJW3EX
 clKdy9aM8QKoIjs68/vRgz2lBXrzckhfjRU2/l7/rSRlQjEpzTOBiQe4DR8Xr6Ozorsg
 +eLA==
X-Gm-Message-State: APjAAAWqNNwCC7kbX5WqJHIBbTXdaRQeEeuxny5Fc3qwnzkabmRikgcI
 WqnmQ9mW/baHG8aLHv5k+90=
X-Google-Smtp-Source: APXvYqwICO+lUQpX0zfeSUwlQ8SBPmqpnb9NS3+v6JoAVsMYhlrKUgJY8pslMcI2jr4Ozz/YqyM/9A==
X-Received: by 2002:a17:90a:220a:: with SMTP id
 c10mr95042299pje.33.1564069422669; 
 Thu, 25 Jul 2019 08:43:42 -0700 (PDT)
Received: from [172.20.174.128] ([2620:10d:c090:180::1:622f])
 by smtp.gmail.com with ESMTPSA id z68sm46012882pgz.88.2019.07.25.08.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jul 2019 08:43:42 -0700 (PDT)
From: "Jonathan Lemon" <jonathan.lemon@gmail.com>
To: "Magnus Karlsson" <magnus.karlsson@gmail.com>
Date: Thu, 25 Jul 2019 08:43:40 -0700
X-Mailer: MailMate (1.12.5r5635)
Message-ID: <19272E3B-7BA5-4AC2-8D16-E9FC143E13D3@gmail.com>
In-Reply-To: <CAJ8uoz26Byzhc4My70h3nmfd3pQB1ahFf=ZzN2heN4asrJ-NQg@mail.gmail.com>
References: <20190620090958.2135-1-kevin.laatz@intel.com>
 <20190716030637.5634-1-kevin.laatz@intel.com>
 <CAADnVQLEdJwT7DRCpp2zuKWTg0uj=WKQkFc2LZ4o+1fDgnEFLg@mail.gmail.com>
 <CAJ8uoz26Byzhc4My70h3nmfd3pQB1ahFf=ZzN2heN4asrJ-NQg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 00/10] XDP unaligned chunk
 placement support
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Kevin Laatz <kevin.laatz@intel.com>,
 ciara.loftus@intel.com, Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Network Development <netdev@vger.kernel.org>, bruce.richardson@intel.com,
 bpf <bpf@vger.kernel.org>,
 =?utf-8?b?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Alexei Starovoitov <alexei.starovoitov@gmail.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 24 Jul 2019, at 6:25, Magnus Karlsson wrote:

> On Tue, Jul 23, 2019 at 11:08 PM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
>>
>> Johnathan, Bjorn, Jakub,
>> Please review!
>> The patch set has been pending for a week.
>
> There is a v3 coming out shortly so I suggest we wait for that. It
> will have Mellanox support for this feature too and some clean ups. I
> refrained from posting a review on the mailing list due to the merge
> window being closed last week, but maybe that was not correct. Should
> I still post reviews for new features submitted during the closed
> merge window period? I am happy to do it since I do not have any other
> tasks during that time. It is a quite period for me. Just let me know.

Same here - last time I posted a patch when the merge window was closed,
it was signaled to me (Hi Jakub!) to wait until it reopened.
-- 
Jonathan



>
> /Magnus
>
>> On Tue, Jul 16, 2019 at 4:21 AM Kevin Laatz <kevin.laatz@intel.com> 
>> wrote:
>>>
>>> This patch set adds the ability to use unaligned chunks in the XDP 
>>> umem.
>>>
>>> Currently, all chunk addresses passed to the umem are masked to be 
>>> chunk
>>> size aligned (default is 2k, max is PAGE_SIZE). This limits where we 
>>> can
>>> place chunks within the umem as well as limiting the packet sizes 
>>> that are
>>> supported.
>>>
>>> The changes in this patch set removes these restrictions, allowing 
>>> XDP to
>>> be more flexible in where it can place a chunk within a umem. By 
>>> relaxing
>>> where the chunks can be placed, it allows us to use an arbitrary 
>>> buffer
>>> size and place that wherever we have a free address in the umem. 
>>> These
>>> changes add the ability to support arbitrary frame sizes up to 4k
>>> (PAGE_SIZE) and make it easy to integrate with other existing 
>>> frameworks
>>> that have their own memory management systems, such as DPDK.
>>>
>>> Since we are now dealing with arbitrary frame sizes, we need also 
>>> need to
>>> update how we pass around addresses. Currently, the addresses can 
>>> simply be
>>> masked to 2k to get back to the original address. This becomes less 
>>> trivial
>>> when using frame sizes that are not a 'power of 2' size. This patch 
>>> set
>>> modifies the Rx/Tx descriptor format to use the upper 16-bits of the 
>>> addr
>>> field for an offset value, leaving the lower 48-bits for the address 
>>> (this
>>> leaves us with 256 Terabytes, which should be enough!). We only need 
>>> to use
>>> the upper 16-bits to store the offset when running in unaligned 
>>> mode.
>>> Rather than adding the offset (headroom etc) to the address, we will 
>>> store
>>> it in the upper 16-bits of the address field. This way, we can 
>>> easily add
>>> the offset to the address where we need it, using some bit 
>>> manipulation and
>>> addition, and we can also easily get the original address wherever 
>>> we need
>>> it (for example in i40e_zca_free) by simply masking to get the lower
>>> 48-bits of the address field.
>>>
>>> The numbers below were recorded with the following set up:
>>>   - Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz
>>>   - Intel Corporation Ethernet Controller XXV710 for 25GbE SFP28 
>>> (rev 02)
>>>   - Driver: i40e
>>>   - Application: xdpsock with l2fwd (single interface)
>>>
>>> These are solely for comparing performance with and without the 
>>> patches.
>>> The largest drop was ~1% (in zero-copy mode).
>>>
>>> +-------------------------+------------+-----------------+-------------+
>>> | Buffer size: 2048       | SKB mode   | Zero-copy       | Copy      
>>>   |
>>> +-------------------------+------------+-----------------+-------------+
>>> | Aligned (baseline)      | 1.7 Mpps   | 15.3 Mpps       | 2.08 Mpps 
>>>   |
>>> +-------------------------+------------+-----------------+-------------+
>>> | Aligned (with patches)  | 1.7 Mpps   | 15.1 Mpps       | 2.08 Mpps 
>>>   |
>>> +-------------------------+------------+-----------------+-------------+
>>> | Unaligned               | 1.7 Mpps   | 14.5 Mpps       | 2.08 Mpps 
>>>   |
>>> +-------------------------+------------+-----------------+-------------+
>>>
>>> NOTE: We are currently working on the changes required in the 
>>> Mellanox
>>> driver. We will include these in the v3.
>>>
>>> Structure of the patchset:
>>> Patch 1:
>>>   - Remove unnecessary masking and headroom addition during 
>>> zero-copy Rx
>>>     buffer recycling in i40e. This change is required in order for 
>>> the
>>>     buffer recycling to work in the unaligned chunk mode.
>>>
>>> Patch 2:
>>>   - Remove unnecessary masking and headroom addition during
>>>     zero-copy Rx buffer recycling in ixgbe. This change is required 
>>> in
>>>     order for the  buffer recycling to work in the unaligned chunk 
>>> mode.
>>>
>>> Patch 3:
>>>   - Add infrastructure for unaligned chunks. Since we are dealing 
>>> with
>>>     unaligned chunks that could potentially cross a physical page 
>>> boundary,
>>>     we add checks to keep track of that information. We can later 
>>> use this
>>>     information to correctly handle buffers that are placed at an 
>>> address
>>>     where they cross a page boundary.  This patch also modifies the
>>>     existing Rx and Tx functions to use the new descriptor format. 
>>> To
>>>     handle addresses correctly, we need to mask appropriately based 
>>> on
>>>     whether we are in aligned or unaligned mode.
>>>
>>> Patch 4:
>>>   - This patch updates the i40e driver to make use of the new 
>>> descriptor
>>>     format. The new format is particularly useful here since we can 
>>> now
>>>     retrieve the original address in places like i40e_zca_free with 
>>> ease.
>>>     This saves us doing various calculations to get the original 
>>> address
>>>     back.
>>>
>>> Patch 5:
>>>   - This patch updates the ixgbe driver to make use of the new 
>>> descriptor
>>>     format. The new format is particularly useful here since we can 
>>> now
>>>     retrieve the original address in places like ixgbe_zca_free with 
>>> ease.
>>>     This saves us doing various calculations to get the original 
>>> address
>>>     back.
>>>
>>> Patch 6:
>>>   - Add flags for umem configuration to libbpf
>>>
>>> Patch 7:
>>>   - Modify xdpsock application to add a command line option for
>>>     unaligned chunks
>>>
>>> Patch 8:
>>>   - Since we can now run the application in unaligned chunk mode, we 
>>> need
>>>     to make sure we recycle the buffers appropriately.
>>>
>>> Patch 9:
>>>   - Adds hugepage support to the xdpsock application
>>>
>>> Patch 10:
>>>   - Documentation update to include the unaligned chunk scenario. We 
>>> need
>>>     to explicitly state that the incoming addresses are only masked 
>>> in the
>>>     aligned chunk mode and not the unaligned chunk mode.
>>>
>>> ---
>>> v2:
>>>   - fixed checkpatch issues
>>>   - fixed Rx buffer recycling for unaligned chunks in xdpsock
>>>   - removed unused defines
>>>   - fixed how chunk_size is calculated in xsk_diag.c
>>>   - added some performance numbers to cover letter
>>>   - modified descriptor format to make it easier to retrieve 
>>> original
>>>     address
>>>   - removed patch adding off_t off to the zero copy allocator. This 
>>> is no
>>>     longer needed with the new descriptor format.
>>>
>>> Kevin Laatz (10):
>>>   i40e: simplify Rx buffer recycle
>>>   ixgbe: simplify Rx buffer recycle
>>>   xsk: add support to allow unaligned chunk placement
>>>   i40e: modify driver for handling offsets
>>>   ixgbe: modify driver for handling offsets
>>>   libbpf: add flags to umem config
>>>   samples/bpf: add unaligned chunks mode support to xdpsock
>>>   samples/bpf: add buffer recycling for unaligned chunks to xdpsock
>>>   samples/bpf: use hugepages in xdpsock app
>>>   doc/af_xdp: include unaligned chunk case
>>>
>>>  Documentation/networking/af_xdp.rst          | 10 ++-
>>>  drivers/net/ethernet/intel/i40e/i40e_xsk.c   | 39 +++++----
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 39 +++++----
>>>  include/net/xdp_sock.h                       |  2 +
>>>  include/uapi/linux/if_xdp.h                  |  9 ++
>>>  net/xdp/xdp_umem.c                           | 17 ++--
>>>  net/xdp/xsk.c                                | 89 
>>> ++++++++++++++++----
>>>  net/xdp/xsk_diag.c                           |  2 +-
>>>  net/xdp/xsk_queue.h                          | 70 +++++++++++++--
>>>  samples/bpf/xdpsock_user.c                   | 61 ++++++++++----
>>>  tools/include/uapi/linux/if_xdp.h            |  4 +
>>>  tools/lib/bpf/xsk.c                          |  3 +
>>>  tools/lib/bpf/xsk.h                          |  2 +
>>>  13 files changed, 266 insertions(+), 81 deletions(-)
>>>
>>> --
>>> 2.17.1
>>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
